'use strict';
jQuery(document).ready(function () {
	if (jQuery('#message-purchased').length > 0) {
		var data = jQuery('#message-purchased').data();
		var notify = woo_notification;
		notify.loop = data.loop;
		notify.init_delay = data.initial_delay;
		notify.total = data.notification_per_page;
		notify.display_time = data.display_time;
		notify.next_time = data.next_time;
		notify.init();
	}

	jQuery('#notify-close').on('click', function () {
		woo_notification.message_hide();
	});
});


var woo_notification = {
	loop        : 0,
	init_delay  : 5,
	total       : 30,
	display_time: 5,
	next_time   : 60,
	init        : function () {
		setTimeout(function () {
			woo_notification.message_show();
		}, this.init_delay * 1000);
		if (this.loop) {
			var inte = setInterval(function () {
				woo_notification.get_product();
			}, this.next_time * 1000);
		}
	},
	message_show: function () {
		var message_id = jQuery('#message-purchased');
		if (message_id.hasClass('fade-out')) {
			jQuery(message_id).removeClass('fade-out');
		}
		jQuery(message_id).addClass('fade-in').show();
		this.audio();
		setTimeout(function () {
			woo_notification.message_hide();
		}, this.display_time * 1000);
	},

	message_hide: function () {
		var message_id = jQuery('#message-purchased');
		if (message_id.hasClass('fade-in')) {
			jQuery(message_id).removeClass('fade-in');
		}
		jQuery('#message-purchased').addClass('fade-out');
	},
	get_product : function () {
		jQuery.ajax({
			type   : 'POST',
			data   : 'action=woonotification_get_product',
			url    : wnotification_ajax_url,
			success: function (html) {
				var content = jQuery(html).children();
				jQuery("#message-purchased").html(content);
				woo_notification.message_show();
				jQuery('#notify-close').on('click', function () {
					woo_notification.message_hide();
				});
			},
			error  : function (html) {
			}
		})
	},
	close_notify: function () {
		jQuery('#notify-close').on('click', function () {
			woo_notification.message_hide();
		});
	},
	audio       : function () {
		if (jQuery('#woo-notification-audio').length > 0) {
			var audio = document.getElementById("woo-notification-audio");
			audio.play();
		}
	}
}
