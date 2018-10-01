<%@include file = "includes/topo.jsp" %>

  <title>
    Cadastrar
  </title>
</head>

<body class="register-page">

  <%@include file="includes/navbar.jsp" %>
  		<button type="button" style="margin-left: 50px" class="btn btn-success btn-round" onclick="location.href='login.jsp'">Acesse</button>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->

  <%@include file="includes/fullpage.jsp" %>

	  <div class="content">
	  
      </div>
      
	  <%@include file="includes/lead/confirmacao.jsp" %>
	  
      <%@include file="includes/lead/esqueci.jsp" %>

	<%@include file="includes/footer.jsp" %>
  
  <%@include file="includes/base.jsp" %>
    <script>
	Pace.on("done", function(){
		  $(".content").fadeIn(1500);
		});
    
	  $(document).ready(function() {
		  
		  $('.content').load('includes/pages/cadastrar.jsp');
		  
	  });
  
	//Regras de validação do form de Confirmação de Cadastro do Paciente
	var formConfPac = $('.formConfirmaçãoPaciente');
	formConfPac.validate({
		  rules: {
			  email: {
				  required: true,
				  email: true,
				  equalTo: "#emailPac",
			  },
			  senha: {
				  required: true,
				  pass: true,
				  equalTo: "#senhaPac"
			  }
		  },
		  messages: {
			  email: {
				  required: "Temos que ter certeza se nenhum engano foi cometido entende?",
		      	  email: "Lembrando que seu e-mail precisa ser parecido com esse: david@dominio.com",
				  equalTo: "Lembrando que tem que ser o mesmo e-mail que você colocou anteriormente"
			  },
			  senha: {
				  required: "Temos que certificar que não aconteceu nenhum engano anteriormente",
				  equalTo: "Da uma olhada lá atrás, por que parece que as senhas informadas não são as mesmas :c"
			  }
		  }
	});
	
	$('#btn_confirmar').click(function(){
		  if(formConfPac.valid()){
			if (($("input[name='termos']:checked").length)<=0) {
				S3.showSwal("readterms");
			}else{
				formCadPac.submit();
				S3.showSwal("sendedemail");
			};
		  };
	});
  </script>