<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable = [
        'product',
        'review',
        'link',
    ];
    function stone($request){
        try{
            foreach($this->fillable as $row){
               $data[$row] = empty($request->$row)?null:$request->$row;
            }
            Image::create($data);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }

    function _update($request, $id){
        try{
            $image = Image::find($id);
            if(!$image){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            foreach($this->fillable as $row){
               $image->$row = $request->$row;
            }
            if($image->save()){
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
            $image = Image::find($id);
            if(!$image){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            if($image->delete()){
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
