<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductDetail extends Model
{
    protected $fillable = [
        'color',
        'size',
        'product_id',
        'quantity',
    ];
    function stone($request){
        try{
            foreach($this->fillable as $row){
               $data[$row] = empty($request->$row)?null:$request->$row;
            }
            ProductDetail::create($data);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }

    function _update($request, $id){
        try{
            $ProductDetail = ProductDetail::find($id);
            if(!$ProductDetail){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            foreach($this->fillable as $row){
               $ProductDetail->$row = $request->$row;
            }
            if($ProductDetail->save()){
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
            $ProductDetail = ProductDetail::find($id);
            if(!$ProductDetail){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            if($ProductDetail->delete()){
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
