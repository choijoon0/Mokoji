$(function(){
	$('.club').click(function(){
	var ctmid_name = $(this).val();
	   $.ajax({
      url: 'clubTotal.do?ctmid_name='+ ctmid_name,
      type: "GET",
      cache : false,
      success : function(data){
            for(var i=0;i<data.length;i++){
                 $("#clubList").append('<div class="col-lg-4 templatemo-item-col all ' + data[i].club_name + '">');
                 $("#clubList").append('<div class="meeting-item">');
                 $("#clubList").append('<div class="thumb"><img src="'+data[i].club_rpic + '"/></div>');
                 $("#clubList").append('<div class="down-content"><a href="#"><h4><font color="#fff">' + data[i].club_intro + '</font></h4></a></div></div></div>');
            }
         }, error :function(){
            alert(ctmid_name);
         }
   });     
	});
	});