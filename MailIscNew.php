<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\MyCore\Services;

class MailIscNew {

    public $baseUrl  = 'http://systemmailapi.fpt.vn';
    public $portSendMail    = 80;
    public $urlBulkMailApi  = '/api/SendMailSMTP/InsertInfoSendMailSMTP';

    function send($email, $subject, $contents , $emailCC = ""){
        $params = [
            "FromEmail"  => "iscsupport@fpt.com.vn",
            "Recipients" => $email,
            'CarbonCopys'       => $emailCC,
            'BlindCarbonCopys'  => '',
            'Subject'           => $subject,
            'Body'              => $contents,
            'AttachFile'        => '',
            'AttachUrl'         => '',
        ];
        
        $url = $this->baseUrl . $this->urlBulkMailApi;
        $result = $this->sendRequest($url, $params);
        $outputSendMail = json_decode($result, true);
        return $outputSendMail;
    }
    protected function sendRequest($url, $data){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_PORT, $this->portSendMail);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json')
        );
        if (env('APP_ENV') === 'local') {
            curl_setopt($ch, CURLOPT_PROXY, '');
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        }

        $output = curl_exec($ch);
		
        curl_close($ch);
        return $output;
    }
}
