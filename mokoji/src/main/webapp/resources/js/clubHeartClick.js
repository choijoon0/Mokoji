 /**
 * 
 */
 var animated = false;
  $(".heart").each(function(index,element){
  	$(this).on("click", function() {
  		if($(this).hasClass("is-active")){
    		$(this).removeClass("is-active");
				var club_code = $(this).attr("value");
				$('#heart').empty();
					$.ajax({
		     			 url: 'clubdownHeart.do?club_code=' + club_code,
		     			 type: "POST", 
		      			 success : function(data){
		      			 if(date[i].num >0){
		      			 alert("찜하기취소");
		      			 }
		     	    },error:function(request,status,error){
		     	    
		        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       	}
		   });     
		            }else{
						$(this).addClass("is-active");
		            	var club_code = $(this).attr("value");
		            	$('#heart').empty();
							$.ajax({
		     			 		url: 'insertHeartLikes.do?club_code=' + club_code,
		     			 		type: "POST", 
		      			 		success : function(data){
		            	 			 if(date[i].num >0){
		      			 alert("찜하기완료");
		      			 }
		     	    },error:function(request,status,error){
		     	  
		        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       	}
		   });        
		  }
		});
	}); 