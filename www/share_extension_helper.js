var ShareExtensionHelper = function() {};

ShareExtensionHelper.prototype.loadShareImage = function(success, fail) {
  cordova.exec(success, fail, "ShareExtensionHelper", "loadShareImage");
};

var shareExtensionHelper = new ShareExtensionHelper();
module.exports = shareExtensionHelper;
