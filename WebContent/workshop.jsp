<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paula's Porcupine Pagoda</title>
<link rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
  crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/main.css"/></head>
<body>

<jsp:include page="include/header.jsp" />

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1>Workshop Schedule</h1>
    </div>
  </div>
</div>

<div class="accordion">
  <div class="card z-depth-0 bordered">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
          aria-expanded="true" aria-controls="collapseOne">
          Acupuncture Business Success (December 15, 2019)
        </button>
      </h5>
    </div>
    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne">
      <div class="card-body">
        What makes a successful practice? What do you achieve when you combine new technology, 
        low overhead, numerous marketing options and excellent customer service? 
        You get a successful acupuncture practice. This workshop is designed to: 
        Reduce acupuncturist workload; 
        Minimize overhead; Maximize marketing efforts; 
        Improve doctor-patient relationships; 
        and Business Investment. 
        We will teach you how to eliminate waste and 
        maximize your investment.
        
        <form action="registerWorkshop.jsp" id="registerWorkshop" method="post">
      		<input type="hidden" name="workshopName" value="Acupuncture Business Success (December 15, 2019)">
      	</form>
      	<br/>
		<button class="btn-orange text-center" form="registerWorkshop" type="submit" value="Sign Up">Sign Up</button>

      </div>
      </div>
    </div>
  </div>
  <div class="card z-depth-0 bordered">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
          data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          A Basic Acupuncture Guide to Insomnia (July 10, 2020)
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo">
      <div class="card-body">
        Do you see a lot of patients in your practice seeking treatment for insomnia?  
        For a great price, this course will discuss a variety of research studies done 
        on acupuncture for insomnia, review acupuncture points for treatment, provide a comprehensive 
        over view of the CAUSES of insomnia, and additional tips and techniques will be explained on getting a restful sleep.  
        Education will be provided on the different prescription medications for insomnia and their potential side effects.  
        Some questions we will answer in this course:  Are herbs combined with acupuncture more effective in 
        treating insomnia than just herbs alone? Does aromatherapy with use of essential oils work to promote restful sleep?  
        Can beta-blockers cause insomnia?  
        These questions and more will be answered in “A Basic Acupuncture Guide to Insomnia”!       
        
        <form action="registerWorkshop.jsp" id="registerWorkshop" method="post">
      		<input type="hidden" name="workshopName" value="A Basic Acupuncture Guide to Insomnia (July 10, 2020)">
      	</form>
		<br/>
		<button class="btn-orange" form="registerWorkshop" type="submit" value="Sign Up">Sign Up</button>

      </div>
    </div>
  </div>
  <div class="card z-depth-0 bordered">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
          data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Acupuncture for Pediatrics (August 18, 2020)
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree">
      <div class="card-body">
        We will discuss a variety of transmittable diseases, 
        how they are spread, and prevention techniques to keep your practice clean and safe. 
        Diseases that are discussed include HIV/AIDS, Hepatitis, Influenza, Malaria, Polio, Tuberculosis.
        
      	<form action="registerWorkshop.jsp" id="registerWorkshop" method="post">
      		<input type="hidden" name="workshopName" value="Acupuncture for Pediatrics (August 18, 2020)">
      	</form>
      	<br/>
		<button class="btn-orange text-center" form="registerWorkshop" type="submit" value="Sign Up">Sign Up</button>
      
      </div>
    </div>
  </div>
  <div class="card z-depth-0 bordered">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseFour"
          aria-expanded="false" aria-controls="collapseFour">
          Acupuncture Ethics (October 15, 2020)
        </button>
      </h5>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour">
      <div class="card-body">
        We will discuss the topics of acupuncture practice regarding state laws, 
        truthful advertising and history of advertising, appropriate credentials and designation, 
        efficacy in treatment out comes, and state regulatory reporting.
        
        <form action="registerWorkshop.jsp" id="registerWorkshop" method="post">
      		<input type="hidden" name="workshopName" value="Acupuncture Ethics (October 15, 2020)">
      	</form>
      	<br/>
		<button class="btn-orange text-center" form="registerWorkshop" type="submit" value="Sign Up">Sign Up</button>
        
      </div>
   </div>
 </div>
<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>