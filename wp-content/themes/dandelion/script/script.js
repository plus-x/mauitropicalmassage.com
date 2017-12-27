
/**
 * This file contains the functionality for initializing all the scripts in the
 * site and also there are some main initial settings included here, such as
 * setting rounded corners automatically, setting the Twitter functionality,
 * etc.
 * 
 * @author Pexeto
 */

var pexetoSite;

(function($){
pexetoSite = {
	enableCufon:'off',
	lightboxOptions : {},
	isResponsive : true,
	initSite : function() {

		this.checkIfMobile();

		var browser = this.getBrowser();
		if(browser.msie){
			var version = parseInt(browser.version, 10);
			if(version<=8){
				this.isResponsive = false;
				$('body').addClass('ie-lte-8');
			}
			$('body').addClass('ie-'+version);
		}

		// sets the colorbox lightbox
		jQuery(".gallery a").each(function(){
			var lightbox=jQuery(this).parents('.preview-item').length?'lightbox':'lightbox[group]';
			jQuery(this).attr("rel", lightbox);
		});
		
		this.setLightbox(jQuery("a[rel^='lightbox']"));
		
		this.setTestimonialFunc();
		
		//set the tabs functionality
		jQuery("ul.tabs").tabs("div.panes > div");
		
		//set the accordion functionality
		jQuery('.accordion-container').each(function(){
			jQuery(this).tabs(jQuery(this).find('div.pane'), {tabs: 'h2', effect: 'slide', initialIndex: 0});
		});
		
		this.set_submit_comment();
		
		//SET THE SEARCH BUTTON CLICK HANDLER
		jQuery('#search_button').click(function(event){
			event.preventDefault();
			jQuery('#searchform').submit();
		});
		
		this.setColumns();
		
		this.setDropDown();
		this.loadCufon();

	},
		
	loadCufon:function(){
		if(this.enableCufon==='on'){
			Cufon.replace('h1,h2,h3,h4,h5,h6,#portfolio-big-pagination,.showcase-item span,a.button span,.intro-text, a.button-small span,.drop-caps');
		}
	},
	
	
	setScrollable:function(){
		return jQuery('#slider-navigation').scrollable();
	},
	
	setPortfolioLightbox:function(){
		this.setLightbox(jQuery('a[rel="lightbox"]'));
	},
	
	setLightbox:function(elem){
		var defaults = {animation_speed:'normal', theme:'light_rounded', overlay_gallery: false, deeplinking:false},
			options = jQuery.extend(defaults, pexetoSite.lightboxOptions);

		if(!pexetoSite.lightboxOptions.enable_social_tools){
			options['social_tools']='';
		}
		elem.prettyPhoto(options);
	},
	
	/**
	 * Adds a drop down functionality.
	 */
	setDropDown:function(){
		var browser = this.getBrowser(),
			padding=browser.msie?5:12,
			$hoverLi = jQuery("#menu ul li").has('ul'),
			$win = $(window);
		
		$hoverLi.each(function(){
			jQuery(this).find('a:first').append('<span class="drop-arrow">&raquo;</span>');
		});
		
		jQuery("#menu ul ul").data('padding', 15);
		jQuery("#menu ul ul ul").data('padding', 0);
		
		$hoverLi.hover(function(){
			var li = $(this),
			ul = jQuery(this).find('ul:first'),
			parentUlNum = ul.parents('ul').length;

			li.addClass('hovered');

			if(parentUlNum > 1) {
				var elWidth = li.width(),
					ulWidth = ul.width(),
					winWidth = $win.width(),
					elOffset = li.offset().left,
					left = (elWidth + ulWidth + elOffset > winWidth) ? -elWidth : '';

				//if the drop down ul goes beyound the screen, move it on the left side
				ul.css({
					left: left
				});
			} 

			ul.stop().css({paddingTop:ul.data('padding'), height:'auto'}).slideDown(300, function(){
				ul.css({overflow:"visible", visibility:'visible'});
			});

		}, function(){
			var ul = jQuery(this).find('ul:first');
			ul.stop().slideUp(300, function()
			{	
				ul.css({overflow:"hidden", display:"none"});
			});
		});
		
		if(browser.opera){
			jQuery("#menu ul li").mouseover(function(e){
				jQuery(this).css({backgroundColor:'#fff'});
			});
		}
		
		if(this.isResponsive){
			this.mobileMenu.init();
		}
	},

	/**
	 * Contains the mobile drop down menu functionality
	 */
	mobileMenu : {

		/**
		 * Inits the main functionality. Creates the needed elements and
		 * duplicates the elements from the main navigation menu.
		 */
		init : function(){
			var self = this,
				$menu, $menuBtn;

			$menuBtn = $('.mob-nav-btn');
			if(!$menuBtn.length){
				//the mobile menu is not enabled
				return;
			}

			self.$win = $(window);
			self.$body = $('body');
			self.$mainMenu = $('#menu');
			self.arrowClass = 'mob-nav-arrow';
			self.subOpenedClass = 'mob-sub-opened';

			$menu = $('<div />', {
				'class': 'mob-nav-menu',
				html: self.$mainMenu.html()
			}).insertAfter($('#header-top'));

			self.stateData = {
				opened : false,
				inAnimation : false,
				$menuBtn : $menuBtn,
				$menu : $menu
			};

			//append a toggle arrow to the elements that contain submenus
			$menu.find('ul li').has('ul').each(function(){
				$(this).append('<div class="'+self.arrowClass+'"><span></span></div>');
			});

			self.bindEventHandlers();
		},

		/**
		 * Binds the main event handlers.
		 */
		bindEventHandlers : function(){
			var self = this,
				m = self.stateData;

			//menu button click handler
			m.$menuBtn.on('click', function(){
				self.toggleMenu();
			});

			//hide the mobile menu 
			self.$win.on('resize', function(){
				if(!m.$menuBtn.is(':visible') && (m.$menu && m.opened)){
					m.$menu.hide();
					m.opened = false;
				}
			});

			m.$menu.find('li:has(ul) a[href="#"],'+'.'+self.arrowClass).on('click', function(e){
				e.preventDefault();
				var $submenu = $(this).siblings('ul:first'),
					$arrow = e.target.nodeName.toLowerCase()=='div' ?
						$(this) : $(this).siblings('.'+self.arrowClass);

				self.toggleSubmenu($submenu, $arrow);	
			});
		},

		/**
		 * Shows/hides the main mobile menu.
		 */
		toggleMenu : function(){
			var self = this,
			m = self.stateData;

			if(!m.inAnimation) {
				if(!m.opened) {
					//show the menu
					m.inAnimation = true;
					m.$menu.animate({
						height: 'show'
					}, function() {
						m.opened = true;
						m.inAnimation = false;
					});
				} else {
					//hide the menu
					m.inAnimation = true;
					m.$menu.animate({
						height: 'hide'
					}, function() {
						m.opened = false;
						m.inAnimation = false;
					});
				}
			}
		},

		/**
		 * Shows/hides a submenu.
		 */
		toggleSubmenu : function($ul, $arrow){
			var self = this,
				m = self.stateData;

			if(!$ul.length || m.inAnimation){
				return;
			}

			m.inAnimation = true;
			$arrow.toggleClass(self.subOpenedClass);
			if($ul.is(':visible')){
				//hide the menu
				$ul.animate({height:'hide'}, function(){
					m.inAnimation = false;
				});
			}else{
				//show the menu
				$ul.animate({height:'show'}, function(){
					m.inAnimation = false;
				});
			}
		}
	},

	/**
	 * Checks if the current device is a mobile device. If it is a mobile device, and it is within
	 * the recognized devices, adds its specific class to the body.
	 * @return {boolean} setting if the device is a mobile device or not
	 */
	checkIfMobile: function() {
		if(this.isMobile !== undefined) {
			return this.isMobile;
		}
		var userAgent = navigator.userAgent.toLowerCase(),
			devices = [{
				'class': 'iphone',
				regex: /iphone/
			}, {
				'class': 'ipad',
				regex: /ipad/
			}, {
				'class': 'ipod',
				regex: /ipod/
			}, {
				'class': 'android',
				regex: /android/
			}, {
				'class': 'bb',
				regex: /blackberry/
			}, {
				'class': 'iemobile',
				regex: /iemobile/
			}],
			i, len;

		this.isMobile = false;
		for(i = 0, len = devices.length; i < len; i += 1) {
			if(devices[i].regex.test(userAgent)) {
				$('body').addClass(devices[i]['class'] + ' mobile');
				this.isMobile = true;
				this.mobileType = devices[i]['class'];
				return true;
			}
		}

		return false;
	},
	
	/**
	 * Sets the testimonials accordion functionality.
	 */
	setTestimonialFunc:function(){
		jQuery('.testimonial-container').each(function(){
			jQuery(this).find('div.testim-pane:first').addClass('first');
			jQuery(this).tabs(jQuery(this).find('div.testim-pane'), {
				tabs: 'img', 
				effect: 'horizontal'
			})
		});
	},
	
	setColumns:function(){
		jQuery('#content-container .columns-wrapper').each(function(){
			if(jQuery(this).find('.nomargin').length!==1){
				jQuery(this).find('.two-columns').eq(-1).addClass('nomargin');
				jQuery(this).find('.three-columns').not('.services-box').eq(-1).addClass('nomargin');
				jQuery(this).find('.four-columns').eq(-1).addClass('nomargin');
			}
		});
	},
	
	/**
	 * Loads the Nivo image slider.
	 */
	loadNivoSlider : function(obj, effect, showButtons, showArrows, slices, speed, interval, pauseOnHover, autoplay, columns, rows) {
		obj.find('img:first').css({zIndex:10000});

		// load the Nivo slider	
		jQuery(window)
				.load(function() {
					obj.nivoSlider( {
						effect : effect, // Specify sets like:
						// 'fold,fade,sliceDown'
						slices : slices,
						boxCols: columns, // For box animations
					    boxRows: rows, // For box animations
						animSpeed : speed,
						pauseTime : interval,
						startSlide : 0, // Set starting Slide (0 index)
						directionNav : showArrows, // Next & Prev
						directionNavHide : true, // Only show on hover
						controlNav : showButtons, // 1,2,3...
						controlNavThumbs : false, // Use thumbnails for
						// Control
						// Nav
						controlNavThumbsFromRel : false, // Use image rel for
						// thumbs
						keyboardNav : true, // Use left & right arrows
						pauseOnHover : pauseOnHover, // Stop animation while hovering
						manualAdvance : !autoplay, // Force manual transitions
						captionOpacity : 0.8, // Universal caption opacity
						beforeChange : function() {
						},
						afterChange : function() {
						},
						slideshowEnd : function() {
						} // Triggers after all slides have been shown
					});

					// remove numbers from navigation
						jQuery('.nivo-controlNav a').html('');
						jQuery('.nivo-directionNav a').html('');

		    });
	},
	
	set_submit_comment:function(){
		jQuery('#submit_comment_button').click(function(event){
			event.preventDefault();
			jQuery('#commentform').submit();
		});
	},

	getBrowser : function(){
		var browser = {},
			ua,
			match,
			matched;

		if(this.browser){
			return this.browser;
		}

		ua = navigator.userAgent.toLowerCase();

		match = /(chrome)[ \/]([\w.]+)/.exec( ua ) ||
			/(webkit)[ \/]([\w.]+)/.exec( ua ) ||
			/(opera)(?:.*version|)[ \/]([\w.]+)/.exec( ua ) ||
			/(msie) ([\w.]+)/.exec( ua ) ||
			ua.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)/.exec( ua ) ||
			[];

		matched = {
			browser: match[ 1 ] || "",
			version: match[ 2 ] || "0"
		};

		if ( matched.browser ) {
			browser[ matched.browser ] = true;
			browser.version = matched.version;
		}

		// Chrome is Webkit, but Webkit is also Safari.
		if ( browser.chrome ) {
			browser.webkit = true;
		} else if ( browser.webkit ) {
			browser.safari = true;
		}

		this.browser = browser;

		return browser;
	},

	/**
	 * Contains the functionality of the send email form. Makes the validation and
	 * sends the message.
	 */
	contact : function(options){
		var defaults = {
			emptyNameMessage : 'Please fill in your name',
			invalidEmailMessage : 'Please insert a valid email address',
			emptyQuestionMessage : 'Please write your question',
			emptyCaptchaMessage : 'Please insert the text from the image',
			sentMessage : 'Message Sent',
			wrongCaptchaMessage : "The text you have entered doesn't match the text on the image",
			actionPath:'',
			captcha: true
		},
		o=$.extend(defaults, options),
		captchaTextBox = null,
		nameTextBox = $("#name_text_box"),
		emailTextBox = $("#email_text_box"),
		questionTextArea = $("#question_text_area"),
		form = $('#submit_form'),
		valid = true;

		
		function init() {
			setSendButtonClickHandler();
			setInputClickHandler();

			if(o.captcha){
				captchaTextBox=$('input[name$="recaptcha_response_field"]').removeAttr( 'style' );
			}
			setMessageHover();
			
		}

		/**
		 * Sets the send button click event handler. Validates the inputs and if they are
		 * not valid, displays error messages. If they are valid- makes an AJAX request to the
		 * PHP script to send the message.
		 */
		function setSendButtonClickHandler() {
			var contact = pexetoSite.contact;
			$("#send_button")
					.click(function(event) {
						var name='',
							email='',
							question='',
							captcha='',
							captchaChallenge='';

						
						event.preventDefault();
						valid = true;

							// remove previous validation error messages and warning styles
							nameTextBox.removeClass('invalid');
							emailTextBox.removeClass('invalid');
							questionTextArea.removeClass('invalid');
							$('#recaptcha_widget_div').removeClass('invalid');
							$('#invalid_input').hide();
							$('#sent_successful').hide();
							$('.question_icon').remove();
							$('.contact_message').remove();
							$('#error_box').hide();

							// verify whether the name text box is empty
							name = nameTextBox.val();
							validateIfEmpty(nameTextBox, name, o.emptyNameMessage);

							// verify whether the inserted email address is valid
							email = emailTextBox.val();
							validateIfEmailValid(emailTextBox, email, o.invalidEmailMessage);

							// verify whether the question text area is empty
							question = questionTextArea.val();
							validateIfEmpty(questionTextArea, question, o.emptyQuestionMessage);

							// verify whether the captcha field is empty
							if(o.captcha){
								captchaTextBox = $('input[name$="recaptcha_response_field"]');
								captcha = captchaTextBox.val();
								captchaChallenge = $('input[name$="recaptcha_challenge_field"]').val();
								validateIfEmpty(captchaTextBox, captcha, o.emptyCaptchaMessage);
							}
							

							if (valid) {
								// show the loading icon
								$('#contact_status').html(
										'<div class="contact_loader"></div>');

								var data = {name:name, 
											question:question, 
											email:email, 
											action:'pexeto_send_email',
											recaptcha_response_field: captcha,
											recaptcha_challenge_field: captchaChallenge
										};
								if(o.captcha){
									data.recaptcha_response_field=captcha;
									data.recaptcha_challenge_field=captchaChallenge;	
								}


								$.ajax( {
											type : "POST",
											url : pexetoSite.ajaxurl,
											data : data,
											dataType: 'json',
											success : function(res) {
												if(res.success){
													doOnMessageSent();
												}else{
													$('#contact_status').html('');
													if(o.captcha && res.captcha_failed){
														Recaptcha.reload();
														showValidationError(captchaTextBox, o.wrongCaptchaMessage, {captcha:true});

													}else{
														doOnMessageSendFailed();
													}
												}
												
											}
										});
							}
						});
		}

		function setMessageHover(){
			form.on('mouseover', '.question_icon', function(){
				$(this).css( {
						cursor : 'pointer'
				});
				$(this).siblings('.contact_message')
					.stop().show().animate( {
						opacity : 1
					}, 200);
			}).on('mouseout', '.question_icon', function(){
				$(this).siblings('.contact_message')
					.stop().animate( {
						opacity : 0
					}).hide();
			});
		}

		function doOnMessageSent(){
			form.each(function() {
				this.reset();
			});
			$('#contact_status')
					.html(
							'<div class="check"></div><span>' + o.sentMessage + '</span>');
			setTimeout(function() {
				$('#contact_status').fadeOut(
						500,
						function() {
							$(this).html('')
									.show();
						});
			}, 3000);
		}

		function doOnMessageSendFailed(){
			$('#error_box').animate({"height":"show"});
		}

		function setInputClickHandler() {
			$('#submit_form input, #submit_form textarea').on("focusin", function() {
				$(this).removeClass('invalid');
			});
		}

		function validateIfEmpty(field, value, message){
			if (value == '' || value == null) {
				showValidationError(field, message, {});
			}
		}

		function validateIfEmailValid(field, value, message){
			if (!isValidEmailAddress(value)) {
				showValidationError(field, message, {});
			}
		}

		function showValidationError(field, message, options){
				if(options.captcha){
					$('#recaptcha_widget_div').addClass('invalid');
				}else{
					field.addClass('invalid');
				}
				valid = false;
				$('<div class="question_icon"></div><div class="contact_message"><p>' + message + '</p></div>')
					.insertAfter(field);
		}

		/**
		 * Checks if an email address is a valid one.
		 * 
		 * @param emailAddress
		 *            the email address to validate
		 * @return true if the address is a valid one
		 */
		function isValidEmailAddress(emailAddress) {
			var pattern = new RegExp(
					/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
			return pattern.test(emailAddress);
		}

		init();
	}		
};
}(jQuery));






/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - jQuery Easing
 * 
 * Open source under the BSD License. 
 * 
 * Copyright Â© 2008 George McGinley Smith
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
*/

// t: current time, b: begInnIng value, c: change In value, d: duration
jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	swing: function (x, t, b, c, d) {
		//alert(jQuery.easing.default);
		return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
	},
	easeInQuad: function (x, t, b, c, d) {
		return c*(t/=d)*t + b;
	},
	easeOutQuad: function (x, t, b, c, d) {
		return -c *(t/=d)*(t-2) + b;
	},
	easeInOutQuad: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t + b;
		return -c/2 * ((--t)*(t-2) - 1) + b;
	},
	easeInCubic: function (x, t, b, c, d) {
		return c*(t/=d)*t*t + b;
	},
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	},
	easeInOutCubic: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t + b;
		return c/2*((t-=2)*t*t + 2) + b;
	},
	easeInQuart: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t + b;
	},
	easeOutQuart: function (x, t, b, c, d) {
		return -c * ((t=t/d-1)*t*t*t - 1) + b;
	},
	easeInOutQuart: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
		return -c/2 * ((t-=2)*t*t*t - 2) + b;
	},
	easeInQuint: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t*t + b;
	},
	easeOutQuint: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t*t*t + 1) + b;
	},
	easeInOutQuint: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
		return c/2*((t-=2)*t*t*t*t + 2) + b;
	},
	easeInSine: function (x, t, b, c, d) {
		return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
	},
	easeOutSine: function (x, t, b, c, d) {
		return c * Math.sin(t/d * (Math.PI/2)) + b;
	},
	easeInOutSine: function (x, t, b, c, d) {
		return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
	},
	easeInExpo: function (x, t, b, c, d) {
		return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
	},
	easeOutExpo: function (x, t, b, c, d) {
		return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
	},
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc: function (x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
	},
	easeOutCirc: function (x, t, b, c, d) {
		return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
	},
	easeInOutCirc: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
		return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
	},
	easeInElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
	},
	easeOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
	},
	easeInOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
		return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
	},
	easeInBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*(t/=d)*t*((s+1)*t - s) + b;
	},
	easeOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
	},
	easeInOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158; 
		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
		return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
	},
	easeInBounce: function (x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
	},
	easeOutBounce: function (x, t, b, c, d) {
		if ((t/=d) < (1/2.75)) {
			return c*(7.5625*t*t) + b;
		} else if (t < (2/2.75)) {
			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
		} else if (t < (2.5/2.75)) {
			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
		} else {
			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
		}
	},
	easeInOutBounce: function (x, t, b, c, d) {
		if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
	}
});

/*
 *
 * TERMS OF USE - EASING EQUATIONS
 * 
 * Open source under the BSD License. 
 * 
 * Copyright Â© 2001 Robert Penner
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
 */



(function($) {
	/**
	 * Calls a callback function when all the images from a collection have been loaded.
	 * A "callback" parameter should be added - the function to be called when all the
	 * images are loaded.
	 * @param  {object} options object literal containing the initialization options
	 *
	 * Dependencies: jQuery (http://jquery.com/)
	 *
	 * Example usage: $('.test img').pexetoOnImgLoaded({callback:showImages});
	 *
	 * @author Pexeto
	 * http://pexetothemes.com
	 */
	$.fn.pexetoOnImgLoaded = function(options) {
		var defaults     = {},
			o            = $.extend(defaults, options),
			$images      = $(this),
			ie           = pexetoSite.getBrowser().msie;


		/**
		 * Contains the main plugin functionality - once all the images are loaded, calls the
		 * callback function.
		 */

		function init() {
			var imagesNum = $images.length,
				imgLoaded = 0;

			if(!imagesNum) {
				o.callback.call(this);
				return;
			}

			$images.each(function() {

				$(this).on('load', function(e) {
					e.stopPropagation();
					imgLoaded++;
					if(imgLoaded === imagesNum) {
						//all the images are loaded, call the callback function
						o.callback.call(this);
						$(this).off('load');
					}
				}).on('error', function(){
					$(this).trigger('load');
				});

				if(this.complete || (ie && this.width)) {
					$(this).trigger('load');
				}
			});
		}

		init();
	};
}(jQuery));

/**
 * jQuery Plugin to obtain touch gestures from iPhone, iPod Touch and iPad, should also work with Android mobile phones (not tested yet!)
 * Common usage: wipe images (left and right to show the previous or next image)
 * 
 * @author Andreas Waltl, netCU Internetagentur (http://www.netcu.de)
 * @version 1.1.1 (9th December 2010) - fix bug (older IE's had problems)
 * @version 1.1 (1st September 2010) - support wipe up and wipe down
 * @version 1.0 (15th July 2010)
 */
(function($){$.fn.touchwipe=function(settings){var config={min_move_x:20,min_move_y:20,wipeLeft:function(){},wipeRight:function(){},wipeUp:function(){},wipeDown:function(){},preventDefaultEvents:true};if(settings)$.extend(config,settings);this.each(function(){var startX;var startY;var isMoving=false;function cancelTouch(){this.removeEventListener('touchmove',onTouchMove);startX=null;isMoving=false}function onTouchMove(e){if(config.preventDefaultEvents){e.preventDefault()}if(isMoving){var x=e.touches[0].pageX;var y=e.touches[0].pageY;var dx=startX-x;var dy=startY-y;if(Math.abs(dx)>=config.min_move_x){cancelTouch();if(dx>0){config.wipeLeft()}else{config.wipeRight()}}else if(Math.abs(dy)>=config.min_move_y){cancelTouch();if(dy>0){config.wipeDown()}else{config.wipeUp()}}}}function onTouchStart(e){if(e.touches.length==1){startX=e.touches[0].pageX;startY=e.touches[0].pageY;isMoving=true;this.addEventListener('touchmove',onTouchMove,false)}}if('ontouchstart'in document.documentElement){this.addEventListener('touchstart',onTouchStart,false)}});return this}})(jQuery);

