<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="contact-area bg-color1 p-t-130 p-b-130">
   <div class="container">
      <article class=""  data-aos="fade-up">
         <div class="row">
            <div class="col-md-7">
               <div class="comment-form">

                  <form id="emailForm" class="gform" method="POST" data-email="clothes.yoo@gmail.com" 
                        action="https://script.google.com/macros/s/AKfycbzFGGsOaXoSg44jOsjaOwneGc8zA9l4mjeBrdGEi7L_Y41-emQnjhryOlb-xgDfAq-CRQ/exec">
                     <div class="form-row">
                        <div class="col-md-12">
                           <div class="form-row">
                              <div class="col-md-12">
                                 <div class="form-group">
                                    <input type="text" class="form-control" id="senderEmail" name="senderEmail" placeholder="Your Email" required>
                                 </div>
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="col-md-12">
                                 <div class="form-group">
                                    <input type="text" class="form-control" id="senderName" name="senderName"placeholder="Your Name" required>
                                 </div>
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="col-md-12">
                                 <div class="form-group">
                                    <textarea class="form-control" id="message" name="message" rows="5" placeholder="Your Message"></textarea>
                                 </div>
                              </div>
                           </div>
                           <script type="text/javascript">
                              (function() {
                                 // get all data in form and return object
                                 function getFormData(form) {
                                    var elements = form.elements;
                                    var honeypot;
 
                                    var fields = Object.keys(elements).filter(function(k) {
                                       if (elements[k].name === "honeypot") {
                                       honeypot = elements[k].value;
                                       return false;
                                       }
                                       return true;
                                    }).map(function(k) {
                                       if(elements[k].name !== undefined) {
                                       return elements[k].name;
                                       // special case for Edge's html collection
                                       }else if(elements[k].length > 0){
                                       return elements[k].item(0).name;
                                       }
                                    }).filter(function(item, pos, self) {
                                       return self.indexOf(item) == pos && item;
                                    });
 
                                    var formData = {};
                                    fields.forEach(function(name){
                                       var element = elements[name];
 
                                       // singular form elements just have one value
                                       formData[name] = element.value;
 
                                       // when our element has multiple items, get their values
                                       if (element.length) {
                                       var data = [];
                                       for (var i = 0; i < element.length; i++) {
                                          var item = element.item(i);
                                          if (item.checked || item.selected) {
                                             data.push(item.value);
                                          }
                                       }
                                       formData[name] = data.join(', ');
                                       }
                                    });
 
                                    // add form-specific values into the data
                                    formData.formDataNameOrder = JSON.stringify(fields);
                                    formData.formGoogleSheetName = form.dataset.sheet || "responses"; // default sheet name
                                    formData.formGoogleSendEmail
                                       = form.dataset.email || ""; // no email by default
 
                                    return {data: formData, honeypot: honeypot};
                                 }
 
                                 function handleFormSubmit(event) {  // handles form submit without any jquery
                                    event.preventDefault();           // we are submitting via xhr below
                                    var form = event.target;
                                    var formData = getFormData(form);
                                    var data = formData.data;
 
                                    // If a honeypot field is filled, assume it was done so by a spam bot.
                                    if (formData.honeypot) {
                                       return false;
                                    }
 
                                    disableAllButtons(form);
                                    var url = form.action;
                                    var xhr = new XMLHttpRequest();
                                    xhr.open('POST', url);
                                    // xhr.withCredentials = true;
                                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                                    xhr.onreadystatechange = function() {
                                       if (xhr.readyState === 4 && xhr.status === 200) {
                                          form.reset();
                                          var formElements = form.querySelector(".form-elements")
                                          if (formElements) {
                                             formElements.style.display = "none"; // hide form
                                          }
                                          var thankYouMessage = form.querySelector(".thankyou_message");
                                          if (thankYouMessage) {
                                             thankYouMessage.style.display = "block";
                                             alert("메일 전송에 성공했습니다. 확인 후 회신드리겠습니다.");
                                          }
                                       }
                                    };
                                    // url encode form data for sending as post data
                                    var encoded = Object.keys(data).map(function(k) {
                                       return encodeURIComponent(k) + "=" + encodeURIComponent(data[k]);
                                    }).join('&');
                                    xhr.send(encoded);
                                 }
 
                                 function loaded() {
                                    // bind to the submit event of our form
                                    var forms = document.querySelectorAll("form.gform");
                                    for (var i = 0; i < forms.length; i++) {
                                       forms[i].addEventListener("submit", handleFormSubmit, false);
                                    }
                                 };
                                 document.addEventListener("DOMContentLoaded", loaded, false);
 
                                 function disableAllButtons(form) {
                                    var buttons = form.querySelectorAll("button");
                                    for (var i = 0; i < buttons.length; i++) {
                                       buttons[i].disabled = true;
                                    }
                                 }
                                 })();
                           </script>
                           <div class="form-group m-0">
                              <button id="btnSubmit" class="btn-submit mt-2">Send Message</button>
                           </div>
                        </div>
                     </div>
 
                     <div style="display:none" class="thankyou_message">
                      
                     </div>
                  </form>
               </div>
            </div>
          
         </div>
      </article>
   </div>
</div>
</body>
</html>