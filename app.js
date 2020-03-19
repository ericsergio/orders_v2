function ToggleMenu(evenOdd) {
	this.evenOdd = evenOdd;
};

ToggleMenu.init = new ToggleMenu(0);

function checkDisplay () {
	var chkDisplay = Number($('#displayIndicator').css('color').charAt(4));
	var i = $('.selected').index();
	console.log(chkDisplay);
	//doFooter();
	if(chkDisplay === 1) {
		$($('.typeList').children()[i]).addClass('selected');
		$('.typeList').children().not('.selected').css('display', 'none');
		$('.navWrapper .navList').after('<div id = "mobileMenuBtn" onclick = "mobileDisplayDists()"><img src = "images/menu.png" ></div>');
	};
};
window.onload = checkDisplay();
function ProcessItems(name, count) {
	this.name = name;
	this.count = count || 0;
};

function doItems() {
	$(".itemList").children("li").each(function () {
		$(this).addClass('liResult');
	})
}
function doFocus() {
	$(".itemList").children("input:first").focus();
};

$(document).ready(function () {
	$('.type').each(function () {
		$(this)[0].addEventListener("click", function doType(typeName) {
			$('.resultWrapper').children().remove();
			var typeName = $(this).text();
			var idx = $(this).index() + 1;
			var currPage = window.location.href.substr((window.location.href.lastIndexOf("/") + 1));
			// purpose 1: is for count page and correlates to the do_booz_by_type php function
			// purpose 4: is for managedb page and will correlate to a php function not yet created
			var purposeTypes = [1, 4];
			var purposePages = ["index.html", "managedb.html"];
			//I did it this way so I could add more pages that could have page specific php functions from the same php class depending on which html page the below ajax request is run from.
			for(var p in purposePages) {
				if(currPage === purposePages[p]) {
					var purposeIdx = purposePages.indexOf(currPage);
					var purpose = purposeTypes[purposeIdx];
					if(purposeIdx === 0) {
						var postPath = "pages/fn.php";
					} else {
						var postPath = "fn.php";
					}
				}
			}
			$.post(postPath, {idx: idx, purpose: purpose})
			.done(function(data) {
				$('.resultWrapper').append(data);
				doFocus();
			});
		});
	});
});

/*This will need to be run on every page to position the Footer correctly*/
function doFooter() {
	if(window.scrollY === 0) {
		$('footer').css({
			'position':'fixed',
			'top':'460px'
		});
	} else {
		$('footer').css({
			'position':'fixed',
			'top':'531px'
		});			
	}
};


$(document).ready(function () {
	var screenHeight = window.screen.availHeight;
	var screenWidth = window.screen.availWidth;
	if(screenHeight > screenWidth) {
		$('.typeLeftRight').css("visibility", "visible");
		window.addEventListener('scroll', function(e){
			doFooter();
		});
	} else {
		//in landscape view
		//doFooter();
	}
	
	$('.dist').each(function () {
		$(this)[0].addEventListener("click", function doDist(distName) {
			$('.resultWrapper').children().remove();
			var distName = $(this).text();
			var idx = $(this).parent().index() + 1;
			var purpose = 3;
			$.post("pages/fn.php", {idx: idx, purpose: purpose})
			.done(function(data) {
				//console.log("ajax response : " + data);
				$('.resultWrapper').append(data);
				$('.resultWrapper').show();

				if(ToggleMenu.init.evenOdd > 0) {
					mobileDisplayDists();
					$('tr').each(function () {
						$(this).children(':last').hide();
					});
				}
			});			
		});
	});
});

function processCount() {
	var purpose = 2;
	$(".itemList").children("input").each(function () {
		var count = $(this).val();
		if(count != "") {
			var iName = $(this).attr("id");
			ProcessItems[[iName]] = new ProcessItems(iName, count);
		}
	})
	var props = [];
	for(var p in ProcessItems) {
		props.push(ProcessItems[p])
	}
	var name_count = [];
	for(var p in props) {
		name_count.push(props[p].name + "--" + props[p].count);
	}
	var name_count_str = name_count.join();
	$.post("pages/fn.php", {namecount: name_count_str, purpose:2})
	.done(function(data) {
		console.log("ajax response : " + data);
	});
};

function incrementIdx() {
	$('.resultWrapper').children().remove();
	var n = $('.selected').index();
	n = n + 1;
	var prevN = n - 1;
	if(prevN < 0) {
		prevN = $('.typeList').children(':last').index();
	}
	$($('.selected')[0]).removeClass('selected');
	$($('.typeList').children()[prevN]).hide();
	$($('.typeList').children()[n]).addClass('selected');
	$('.selected').css({
		'margin':'25% 0% 0% 30%',
		'color':'#000',
		'display':'grid',
		'grid-template-columns':'20%'
	});
};

function decrementIdx() {
	$('.resultWrapper').children().remove();
	var n = $('.selected').index();
	n = n - 1;
	var prevN = n + 1;
	var maxNum = $('.typeList').children().length;
	if(prevN > maxNum) {
		prevN = $('.typeList').children(':first').index();
	}
	$($('.selected')[0]).removeClass('selected');
	$($('.typeList').children()[prevN]).hide();
	$($('.typeList').children()[n]).addClass('selected');
	$('.selected').css({
		'margin':'25% 0% 0% 30%',
		'color':'#000',
		'display':'grid',
		'grid-template-columns':'20%'
	});
};

function mobileDisplayDists() {
	ToggleMenu.init.evenOdd += 1;
	if((ToggleMenu.init.evenOdd % 2) === 1) {
		$('.distWrapper').css({
			'visibility':'visible',
			'backgroundColor':'#fff',
			'display': 'block',
			'left': '10%',
			'top': '20%',
			'height': '25%',
			'width': '80%',
			'z-index':'3'
		});
		$('.distList').css({
			'display':'grid',
			'grid-template-columns':'50% 50%',
			'grid-column-gap': '10%',
			'font-size':'1em',
			'color':'#000',
			'margin':'5% 15% 15% 0%'
		});
		$('.dist').css({
			'padding': '2% 5% 2% 5%',
			'color': '#000'
		});
		$('.resultWrapper').hide();
		$('.typeLeftRight').hide();
		$('.selected').hide();
	} else {
		$('.distWrapper').fadeOut(1000);
		$('.distWrapper').css('visibility', 'hidden');
		$('.resultWrapper').show();
		$('.selected').show();
		$('.typeLeftRight').show();
	};
};