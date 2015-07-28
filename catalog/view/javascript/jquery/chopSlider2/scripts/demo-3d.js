jQuery(function(){
    $("#slider").chopSlider({
    	slide:".slide",
    	nextTrigger:"a#slide-next",
    	prevTrigger:"a#slide-prev",
    	hideTriggers:false,
    	sliderPagination:".slider-pagination",
    	hidePagination:false,
    	useCaptions:true,
    	everyCaptionIn:".sl-descr",
    	showCaptionIn:".caption",
    	hideCaptions:true,
    	/* Autoplay */
		autoplay : true,
		autoplayDelay : 6000,
    	t2D:csTransitions['half']['3'],
    	full3D : "rotateY(20deg)",		
    	t3D: [
    	      	csTransitions['3DBlocks'][4],
    	      	csTransitions['3DBlocks'][12],
    	      	csTransitions['3DFlips'][6]
    	     ],
    	/* For Mobile Devices (Optional) */
    	mobile: csTransitions['mobile'][2],
    	/* For Old and IE Browsers (Optional) */
    	noCSS3: csTransitions['noCSS3'][3],
		onStart: function(){},
		onEnd: function(){}      
 })
})

