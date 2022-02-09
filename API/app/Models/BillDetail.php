<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BillDetail extends Model
{
    protected $fillable = [
        'product',
        'bill',
        'quantity',
        'status',
    ];
    function stone($request){
        try{
            foreach($this->fillable as $row){
               $data[$row] = empty($request->$row)?null:$request->$row;
            }
            BillDetail::create($data);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ]);
        }
    }

    function _update($request, $id){
        try{
            $bill_detail = BillDetail::find($id);
            if(!$bill_detail){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            foreach($this->fillable as $row){
               $bill_detail->$row = $request->$row;
            }
            if($bill_detail->save()){
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
            $bill_detail = BillDetail::find($id);
            if(!$bill_detail){
                return response()->json([
                    'status' => 'error',
                    'message' => 'ID không tồn tại',
                ]);
            }
            if($bill_detail->delete()){
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
