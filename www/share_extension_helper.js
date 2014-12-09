var ShareExtensionHelper = function() {};

ShareExtensionHelper.prototype.loadShareImage = function(success, fail) {
  cordova.exec(success, fail, "ShareExtensionHelper", "save");
};

var shareExtensionHelper = new ShareExtensionHelper();
module.exports = shareExtensionHelper;
