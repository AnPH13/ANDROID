<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable = [
        'decription',
        'rate',
        'product',
        'user',
    ];
    function stone($request){
        try{
            foreach($this->fillable as $row){
               $data[$row] = empty($request->$row)?null:$request->$row;
            }
            Review::create($data);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }

    function _update($request, $id){
        try{
            $Review = Review::find($id);
            if(!$Review){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            foreach($this->fillable as $row){
               $Review->$row = $request->$row;
            }
            if($Review->save()){
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
            $Review = Review::find($id);
            if(!$Review){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            if($Review->delete()){
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
