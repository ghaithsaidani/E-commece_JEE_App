<%@ page import="com.example.ilprojetfinale.model.user" %><%--
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
<%user p= (user) request.getAttribute("p");%>
<div class="container">
    <div class="main-body">

        <!-- Breadcrumb -->

        <!-- /Breadcrumb -->

        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                            <div class="mt-3">
                                <h4>Aziz Gadacha</h4>
                                <p class="text-muted font-size-sm">Menzel Jemil</p>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body">

                        <form method="post" action="modification?ut=<%=request.getAttribute("ut")%>">
                        <div class="row">

                            <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                                <span class="label-input100">Username</span>
                                <input class="input100" type="text" name="username" value="<%=p.getUsername()%>" placeholder="Type your username">
                                <span class="focus-input100" data-symbol="&#xf206;"></span>
                            </div>
                        </div>

                        <div class="row">

                            <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                <span class="label-input100">Email</span>
                                <input id="email" class="input100" type="text" value="<%=p.getMail()%>" name="email" placeholder="Eg. example@email.com">
                                <span class="focus-input100" data-symbol="&#x2709;"></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-3">
                            </div>
                            <div class="row">

                                <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                                    <span class="label-input100">Phone</span>
                                    <input class="input100" type="number" value="<%=p.getPhone()%>"  name="phone" placeholder="Type your phone">
                                    <span class="focus-input100" data-symbol="&#x2706;"></span>
                                </div>
                            </div>
                        </div>






                        <div class="row">

                            <div class="wrap-input100 validate-input" data-validate="Password is required">
                                <span class="label-input100"> Password</span>
                                <input class="input100" type="password" value="<%=p.getPassword()%>" name="pass" placeholder="Type your password">
                                <span class="focus-input100" data-symbol="&#xf190;"></span>
                            </div>
                        </div>
                            <div class="row">

                            <div class="wrap-input100 validate-input m-b-23" data-validate = "Adressr is reauired">
                                <span class="label-input100">Adresse</span>
                                <input class="input100" type="text" name="adress" value="<%=p.getAdress()%>" placeholder="Type your adress">
                                <span class="focus-input100" data-symbol="&#x2690;"></span>

                            </div>
                                <input style="display: none" class="input100" type="text" name="id" value="<%=p.getId()%>" placeholder="Type your adress">

                            </div>



<br><br>
                        <div class="row" style="width: 150px">
                            <div class="container-login100-form-btn">
                                <div class="wrap-login100-form-btn">
                                    <div class="login100-form-bgbtn"></div>
                                    <button class="login100-form-btn">
                                        Confirmer
                                    </button>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>





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
