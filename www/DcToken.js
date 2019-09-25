var exec = require('cordova/exec');

exports.getDcToken = function (arg0, success, error) {
    exec(success, error, 'DcToken', 'getDcToken', [arg0]);
};
exports.getDcTokenData = function (arg0, success, error) {
    exec(success, error, 'DcToken', 'getDcTokenData', [arg0]);
};
