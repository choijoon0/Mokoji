$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
      label = $this.prev('label');

     if (e.type === 'keyup') {
         if ($this.val() === '') {
          label.removeClass('active highlight');
        } else {
          label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
       if( $this.val() === '' ) {
          label.removeClass('active highlight'); 
         } else {
          label.removeClass('highlight');   
         }   
    } else if (e.type === 'focus') {
      
      if( $this.val() === '' ) {
          label.removeClass('highlight'); 
         } 
      else if( $this.val() !== '' ) {
          label.addClass('highlight');
         }
    }

});

$('.tab a').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  
  target = $(this).attr('href');

  $('.tab-content > div').not(target).hide();
  
  $(target).fadeIn(600);
  
});

   window.onload = function(){
    document.getElementById("MEM_LOCA").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("MEM_LOCA").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
        
    });

}