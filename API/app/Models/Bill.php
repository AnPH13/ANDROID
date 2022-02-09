<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    protected $fillable = [
        'discount',
        'user',
        'status',
    ];

    function stone($request){
        try{
            foreach($this->fillable as $row){
               $data[$row] = empty($request->$row)?null:$request->$row;
            }
            Bill::create($data);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }

    function _update($request, $id){
        try{
            $bill = Bill::find($id);
            if(!$bill){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            foreach($this->fillable as $row){
               $bill->$row = $request->$row;
            }
            if($bill->save()){
                return response()->json([
                    'status' => 'success',
                    'message' => 'update thành công',
                ]);
            }
            return response()->json([
                'status' => 'error',
                'message' => 'update thất bại',
            ]);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }

    function _destroy($id){
        try{
            $bill = Bill::find($id);
            if(!$bill){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            if($bill->delete()){
                return response()->json([
                    'status' => 'success',
                    'message' => 'xoá thành công',
                ]);
            }
            return response()->json([
                'status' => 'error',
                'message' => 'xoá thất bại',
            ]);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }
}
