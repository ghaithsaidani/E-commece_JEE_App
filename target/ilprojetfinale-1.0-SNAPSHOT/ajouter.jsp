<%@ page import="com.example.ilprojetfinale.model.produit" %><%--
  Created by IntelliJ IDEA.
  User: azizg
  Date: 06/12/2021
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navbar.jsp"/>
<br>
<br>
<br>
<div class="container">
    <div class="main-body">

        <!-- Breadcrumb -->

        <!-- /Breadcrumb -->
        <div class="row gutters-sm">


            <div class="col-md-8" style="margin: auto;
  width: 50%;
  border: 3px;
  padding: 10px;">
                <form method="post" action="ajout?ut=<%=request.getParameter("ut")%>">

                    <div class="card mb-3">
                        <div class="card-body">
                            <br>
                            <div class="row">
                                <div class="wrap-input100 validate-input m-b-23" data-validate = "Name is reauired">
                                    <span class="label-input100">Nom du Produit</span>
                                    <input class="input100" type="text" name="nom" placeholder="Entrer un Nom" >
                                </div>
                            </div>

                            <div class="row">

                                <div class="wrap-input100 validate-input m-b-23" data-validate = "Prix is reauired">
                                    <span class="label-input100">Prix</span>
                                    <input class="input100" type="text" name="prix" placeholder="Entrer un prix" >
                                    <input style="display: none" class="input100" type="text" name="id" >

                                </div>
                            </div>


                            <div class="row">

                                <div class="wrap-input100 validate-input m-b-23" data-validate = "Description  is reauired">
                                    <span class="label-input100">Description</span>
                                    <input class="input100" type="text" name="description" placeholder="entre une description" >
                                </div>
                            </div>


                            <div class="row">

                            <span  class="label-input100">Type</span>

                            <select name="approvername" class="form-select" aria-label="Default select example">
                                <option value="portable">portable</option>
                                <option value="ordinateur">ordinateur</option>
                                <option value="montre">Montre</option>
                            </select>
                            </div>


                            <div >


                            </div>




                            <br><br>
                            <div class="row" style="width: 200px ;margin: auto;

                                 border: 3px;
                                 padding: 10px;width: 200px" class="row"  >
                                <div class="container-login100-form-btn">
                                    <div class="wrap-login100-form-btn">
                                        <div class="login100-form-bgbtn"></div>
                                        <button class="login100-form-btn">
                                            ajouter
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>
<br>
<br>
<br>
<br>

<jsp:include page="footer.jsp"/>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>
</body>
</html>
