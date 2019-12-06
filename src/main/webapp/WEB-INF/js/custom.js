window.setTimeout(function() {
    $(".alertClose").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 4000);

$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	$( "input:password" ).attr("autocomplete","off");
	$( "input:text" ).attr("autocomplete","off");
});

$('.closeall').click(function(){
	$('.panel-collapse.in').collapse('hide');
});

$('.openall').click(function(){
	$('.panel-collapse:not(".in")').collapse('show');
});

$('.editBtn').on('click', function(event) {
	event.preventDefault();  		
	if ($('.disable').attr('disabled')){
		$('.disable').removeAttr('disabled');
	}else{
		$('.disable').attr('disabled', 'disabled');
	}
});

$(function() {
    $('.tree li:has(ul)').addClass('parent_li').find(' > span');
    $('.tree li.parent_li > span').on('click', function(e) {
        var children = $(this).parent('li.parent_li').find(' > ul > li');            
        if (children.is(":visible")) {
            children.hide('fast');
            $(this).find(' > i').addClass('fa-folder').removeClass('fa-folder-open');
        } else {
            children.show('fast');
            $(this).find(' > i').addClass('fa-folder-open').removeClass('fa-folder');
        }
        e.stopPropagation();
    });       
});

if (top.location != location) {
	top.location.href = document.location.href ;
}

$(function() {
	$('#keyUsage').multiselect();
	$('#enhancedkeyUsage').multiselect();
	$('#subjctDNDetails').multiselect();
});

$(document).ready(function(){
	
	$('#keyUsageUse').change(function(){
	if(this.checked)
		$('.multioption').fadeIn('slow');
	else
		$('.multioption').fadeOut('slow');
	});
});
 
// replace any <,>,'," with empty in any text field
$(document).on("input change drag drop", ".formField", function() {
		
	var newVal = $(this).val().replace(/[\<\>]/g,'');
	newVal = newVal.replace(/["']/g, '');
	newVal = newVal.replace(/&lt;/g, '').replace(/&gt;/g, '').replace(/&quot;/g, '').replace(/&apos;/g, '');
	newVal = newVal.replace(/&#60/g, '').replace(/&#62;/g, '').replace(/&#34/g, '').replace(/&#39/g, '');
	newVal = newVal.replace(/ff1c/g, '').replace(/ff1e/g, '');
	$(this).val(newVal);
});

function getEncryptedPassword(givenPassword){
	var encryptedPassword;
	
	$.ajax({
		type : "POST",
		url : "getEncryptedPassword.htm",
		beforeSend: function(xhr) {
            // here it is
            xhr.setRequestHeader(header, token);
        },
		cache : false,
        async: false,
        data : {givenPassword : givenPassword},
		success : function(result) {
			
			encryptedPassword = result;
		},
		error : function(error) {
			
			loadingPleaseWait('N');
			console.log('ajax call getEncryptedPassword error : '+error);
		}
	});
	
	return encryptedPassword;
}

function getPKCS11Data(){
	var pkcs11Data;
	
	$.ajax({
		type : "POST",
		url : "getPKCS11Data.htm",
		beforeSend: function(xhr) {
            // here it is
            xhr.setRequestHeader(header, token);
        },
		cache : false,
        async: false,
		success : function(result) {
			
			pkcs11Data = result;
		},
		error : function(error) {
			loadingPleaseWait('N');
			console.log('ajax call pkcs11Data error : '+error);
		}
	});
	
	return pkcs11Data;
}