<?php

namespace App\Http\Controllers;
use App\Http\Middleware\Authenticate;
use App\Models\User;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Contracts\Providers\Auth;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $email = $request->email;
        $this->validate($request,[
            'name' => ['required', 'max:255'],
            'email' => ['required','email'],
            'password' => ['required','min:6'],
        ],[
            'name.required' => 'không được bỏ trống full name',
            'email.required' => 'không được bỏ trống email',
            'email.email' => 'email sai định dạng',
            'password.required' => 'không được bỏ trống password',
            'password.min' => 'password ít nhất 6 ký tự',
        ]);

        // Check if user already exist
        if (User::where('email', '=', $email)->exists()) {
            return response()->json(['status' => 'lỗi', 'message' => 'email đã tồn tại']);
        }

        // Create new user
        try {
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = app('hash')->make($request->password);

            if ($user->save()) {
                return $this->login($request);
            }
        } catch (\Exception $e) {
            return response()->json(['status' => 'lỗi', 'message' => $e->getMessage()]);
        }
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'đăng xuất thành công']);
    }

    public function login(Request $request)
    {
        $this->validate($request,[
            'email' => ['required', 'email'],
            'password' => ['required','min:6'],
        ],[
            'email.email' => "email không hợp lệ",
            'password.min' => 'password phải có ít nhất 6 ký tự'
        ]);

        $credentials = request(['email', 'password']);

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'tên đăng nhập hoặc mật khẩu không đúng'], 401);
        }

        return $this->respondWithToken($token);
    }

    /**
     * Get the token array structure.
     *
     * @param string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'jwt',
            'session kết thúc sau' => auth()->factory()->getTTL() * 60
        ]);
    }
    protected function getUser(){
        return Auth::user();
    }
}
