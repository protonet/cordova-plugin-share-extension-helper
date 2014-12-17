var ShareExtensionHelper = function() {};

ShareExtensionHelper.prototype.loadShareImage = function(success, fail) {
  cordova.exec(success, fail, "ShareExtensionHelper", "loadShareImage");
};

ShareExtensionHelper.prototype.finishExtension = function() {
  cordova.exec(null, null, "ShareExtensionHelper", "finishExtension");
}

var shareExtensionHelper = new ShareExtensionHelper();
module.exports = shareExtensionHelper;
