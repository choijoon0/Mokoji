$(function(){
	$('.social').click(function(){
	var ctmid_name = $(this).val();
	   $.ajax({
      url: 'Social.do?ctmid_name='+ ctmid_name,
      type: "GET",
      cache : false,
      success : function(data){
            for(var i=0;i<data.length;i++){
                 $("#socialList").append('<div class="card"><div class="card__image-holder"><img class="card__image" src="' + data[i].social_rpic + '"/></div><div class="card-title"><a href="#" class="toggle-info btn"><span class="left"></span><span class="right"></span></a><h2>'+data[i].social_name + '<small>' + data[i].social_tot +'</small></h2></div><div class="card-flap flap1"><div class="card-description">'+data[i].social_content+'</div><div class="card-flap flap2"><div class="card-actions"><a href="#" class="btn">가입하기</a></div></div></div>');	
            }
         }, error :function(){
            alert(ctmid_name);
         }
   });     
	});
	});
	
	
$(function(){
	$('.highcate').click(function(){
	var cthigh_name = $(this).text();
	$.ajax({
      url: 'Social.do?cthigh_name='+ cthigh_name,
      type: "POST",
      cache : false,
      
      success : function(data){
            for(var i=0;i<data.length;i++){
         
				$("#socialList").append('<div class="card"><div class="card__image-holder"><img class="card__image" src="' + data[i].social_rpic + '"/></div><div class="card-title"><a href="#" class="toggle-info btn"><span class="left"></span><span class="right"></span></a><h2>'+data[i].social_name + '<small>' + data[i].social_tot +'</small></h2></div><div class="card-flap flap1"><div class="card-description">'+data[i].social_content+'</div><div class="card-flap flap2"><div class="card-actions"><a href="#" class="btn">가입하기</a></div></div></div>');
				
            }
         }, error :function(){
            alert(ctmid_name);
         }
		});     
	});
	});
	
	function delcontent(){
$('.card').remove();
}

$(function(){
$('.highcate').click(function(){
$('.card').remove();

});
});
