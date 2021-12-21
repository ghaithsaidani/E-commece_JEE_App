<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.ilprojetfinale.model.produit" %><%--
  Created by IntelliJ IDEA.
  User: azizg
  Date: 05/12/2021
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navbar.jsp"></jsp:include>
<!-- Header-->
<header class="bg-dark py-5" style="background-image: url('images/bg-01.jpg');
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;

">


  <div class="container px-4 px-lg-5 my-5">
    <div class="text-center text-white">
      <h1 class="display-4 fw-bolder">GLSI TECH</h1>
      <p class="lead fw-normal text-white-50 mb-0">NEW GENERATION NEW DREAME</p>
    </div>
  </div>

</header>
<%ArrayList<produit>ls= (ArrayList<produit>) request.getAttribute("ls");%>

<!-- Section-->

<!--
<form>
    <div>
        <div id="img-preview"></div>
        <input type="file" id="choose-file" name="choose-file" accept="image/*" />
        <label for="choose-file">Choose File</label>
    </div>
</form>
<script>
function getImgData() {
const files = chooseFile.files[0];
if (files) {
const fileReader = new FileReader();
fileReader.readAsDataURL(files);
fileReader.addEventListener("load", function () {
imgPreview.style.display = "block";
imgPreview.innerHTML = '<img src="' + this.result + '" />';
});
}
    const chooseFile = document.getElementById("choose-file");
    const imgPreview = document.getElementById("img-preview");
    chooseFile.addEventListener("change", function () {
        getImgData();
    });
}
</script>

<script>
function previewFile() {
var preview = document.querySelector('img');
var file    = document.querySelector('input[type=file]').files[0];
var reader  = new FileReader();

reader.onloadend = function () {
preview.src = reader.result;
}

if (file) {
reader.readAsDataURL(file);
console.log(file)
} else {
preview.src = "";
}
}

</script>
</script>
<input type="file" onchange="previewFile()"><br>
<img src="" height="200" alt="Image preview...">-->
<section class="py-5"  style="border-radius: 10px">
  <div class="container px-4 px-lg-5 mt-5">
    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
      <%  int jaw=0;%>

        <%for (int i=0;i<ls.size();i++)
        { %>
      <div class="col mb-5">
        <div class="card h-100">
          <!-- Product image-->
          <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
          <!-- Product details-->
          <div class="card-body p-4">
            <div class="text-center">
              <!-- Product name-->
              <h5 class="fw-bolder"><%=ls.get(i).getProduit()%></h5>
              <!-- Product price-->
              <%= ls.get(i).getPrix()%> DT
            </div>
          </div>


          <!-- Product actions-->
          <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
            <div class="text-center">



            <a class="btn btn-outline-dark mt-auto" href="produitt?id=<%=ls.get(i).getId()%>&ut=<%=request.getAttribute("ut")%>"> View options</a></div>

          </div>
        </div>
      </div>
        <%}%>



    </div>
  </div>
</section>
<div class="text-center">

  <div class="row" style="width: 150px;display: inline-block;">
    <div class="container-login100-form-btn">
      <div class="wrap-login100-form-btn">
        <div class="login100-form-bgbtn"></div>
        <a style="text-decoration: none;" class="login100-form-btn" href="ajouter.jsp?ut=<%=request.getAttribute("ut")%> "> Ajouter</a>
        <!-- Button trigger modal -->



      </div>
    </div>
  </div>

</div>
<br>
<br>
<!-- Footer-->
<jsp:include page="footer.jsp"></jsp:include>

