jQuery.noConflict();
/**
 * Tamaar Modals
 * 
 * Requires jQuery with simplemodal plugin
 *
 * @copyright 2009-2012 Tamaar Skin Care Inc. All rights reserved.
 */
(function(tamaar) {

	var docPath = window.location.pathname;
	/**
	 * Open a URL in a modal window.
	 * 
	 * @param string elemID The name of the element to write the modal content into.
	 * @param string URL    The URL to read the content from.
	 * @param Object Opts	an object containing simplemodal options.
	 * 
	 * @return Void
	 */
	function a(elemID, URL, Opts) {

		LoadAnim = jQuery('#' + elemID + '-loading');
		ModalContent = jQuery('#' + elemID);

		if (ModalContent.length) {
			if (LoadAnim.length) {
				LoadAnim.show();
			}
			jQuery.ajax({
				type : "GET",
				url : URL,
				success : function(result) {
					ModalContent.hide();
					ModalContent.html(result);
					ModalContent.modal(Opts);
					if (LoadAnim.length)
						LoadAnim.hide();
					return ModalContent;
				},
				error : function() {
					return false;
				}
			});
		} else {
			return false;
		}

	}
	/**
	 * Open a URL in a modal window.
	 * 
	 * @param string elemID The name of the element to write the modal content into.
	 * @param string URL    The URL to read the content from.
	 * @param Object Data	An object containing vars to post to the URL.
	 * @param Object Opts	An object containing simplemodal options.
	 * 
	 * @return Void
	 */
	function b(elemID, URL, Data, Opts) {

		if (Opts === undefined)
			Opts = {};
		if (Data === undefined)
			Data = {};

		LoadAnim = jQuery('#' + elemID + '-loading');
		ModalContent = jQuery('#' + elemID);

		if (ModalContent.length) {
			if (LoadAnim.length) {
				LoadAnim.show();
			}
			jQuery.ajax({
				type : "POST",
				url : URL,
				data : Data,
				success : function(result) {
					ModalContent.hide();
					ModalContent.html(result);
					ModalContent.modal(Opts);
					if (LoadAnim.length)
						LoadAnim.hide();
					return ModalContent;
				},
				error : function() {
					return false;
				}
			});
		} else {
			return false;
		}

	}
	/**
	 * Open a modal using an existing page element.
	 * 
	 * @param string elemID The name of the element to write the modal content into.
	 * @param Object Opts	Optional. An object containing simplemodal options.
	 * 
	 * @return void
	 */
	function c(elemID, Opts) {
		if (undefined == Opts)
			Opts = {};
		jQuery('#' + elemID).modal(Opts);
	}
	//expose interface
	tamaar.modal = {
		getURL : a,
		postURL : b,
		open : c

	};

}(window.tamaar = window.tamaar || {}));

//LEGACY: Pointers for functions in the global namespace.
window.modalPopup = tamaar.modal.getURL;
window.modalPost = tamaar.modal.postURL;

//LEGACY: Detect modal content  in redirect from add to basket action
jQuery('#added-to-basket').ready(function() {
	if (jQuery('#added-to-basket').length > 0) {
		jQuery('#added-to-basket').hide();
		jQuery('#added-to-basket').modal();
	}
	;
});
