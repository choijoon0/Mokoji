  function setThumbnail(event){
      var reader = new FileReader();

      reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#socialimage_container").appendChild(img);
      };
      reader.readAsDataURL(event.target.files[0]);
    }
    
      function setThumbnail1(event){
      var reader = new FileReader();

      reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#clubimage_container").appendChild(img);
      };
      reader.readAsDataURL(event.target.files[0]);
    }