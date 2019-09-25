Hi,

This plugin was created by Kaaryaa Labs. It gives you device token and token data.

You can use the plugin by adding this plugin by

        ionic cordova plugin add https://github.com/kaaryaalabs/DeviceCheck.git

You can then import it in any class by declaring DcToken 

        import { Component, OnInit } from '@angular/core';
        declare var DcToken;

Then you can use it by calling follwin methods

        DcToken.getDcToken(successCallback, errorCallback); returns token data converted to base64String in success callback
        DcToken.getDcTokenData(successCallback, errorCallback); returns token data in success callback

Thanks

Kaaryaa Labs