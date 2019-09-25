/*
* Notes: The @objc shows that this class & function should be exposed to Cordova.
*/
import UIKit
import Foundation
import DeviceCheck

@objc(DcToken) class DcToken : CDVPlugin {
  @objc(getDcToken:) // Declare your function name.
  func getDcToken(command: CDVInvokedUrlCommand) { // write the function code.
  
    let curDevice = DCDevice.current
        if curDevice.isSupported
        {
            curDevice.generateToken(completionHandler: { (data, error) in
                if let tokenData = data
                {
                    let token  = tokenData.base64EncodedString();
                  let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs:"\(token)");
                     self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
                }
                else
                {
                   let  pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: error!.localizedDescription);
                     self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
                }
            })
        } else {
            let pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "Current device not supported");
             self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
        }
   
  }
  @objc(getDcTokenData:) // Declare your function name.
  func getDcTokenData(command: CDVInvokedUrlCommand) { 
      let curDevice = DCDevice.current
        if curDevice.isSupported
        {
            curDevice.generateToken(completionHandler: { (data, error) in
                if let tokenData = data
                {
                  let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs:"\(tokenData)");
                     self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
                }
                else
                {
                   let  pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: error!.localizedDescription);
                     self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
                }
            })
        } else {
            let pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "Current device not supported");
             self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
        }
  }
}

