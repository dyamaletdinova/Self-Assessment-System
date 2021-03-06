<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<%-- <%@ page session="false"%> --%>

 
<div id="posts-landing" class="portlet box light panel panel-success hideme">                                      
   <div id="report" class="portlet-title">
		<div class="caption">
			<span class="caption-subject leftShift"><i class="fa fa-book fa-fw"></i>Student
				Test Score </span>
		</div>
		<div class="actions">
			<jsp:useBean id="now" class="java.util.Date" />			
			Date Time :
			<fmt:formatDate value="${now}" pattern="MM/dd/yyyy hh:mm:ss a z" />
			&nbsp; &nbsp;
			<a
				class="btn btn-icon-only btn-primary btn-circle fullscreen text-right alignright"
				href="#" data-original-title="" title=""> <i class="fa fa-th-large"></i></a>
		</div>
	</div>
            <div class="portlet-body">
                               <button id="export" onclick="javascript:demoFromHTML();"
				class="btn btn-circle btn-primary alignright"><i class="fa fa-arrow-circle-down"></i> Export</button>      

    <h3><span>Student Profile </span> </h3>                                                   
	<div class="row">
  <div class="col-md-4">
		
                 
                  <table class="table table-sm">
                  <thead>
				<tr>
					<th></th>
					<th>Student Information </th>
					
				</tr>
			</thead>
                    <tbody>
                     
                      <tr>
                        <td>Student ID </td>
                        <td>${studentAssignment.studentId.studentId}</td>
                      </tr>
                      <tr>
                        <td>Full Name </td>
                        <td>${studentAssignment.studentId.firstName} ${studentAssignment.studentId.lastName}</td>
                      </tr>
                  
                         
                             <tr>
                        <td>Entry </td>
                        <td>${studentAssignment.studentId.entry}</td>
                      </tr>
                      <tr>
                        <td>Phone No </td>
                        <td>641-451-3529</td>
                      </tr>
                      <tr>
                        <td>Email Address </td>
                        <td><a href="${studentAssignment.studentId.email}">${studentAssignment.studentId.email}</a></td>
                      </tr>
                      
                        <tr>
                        <td>Exam Date  </td>
                        <fmt:parseDate value="${studentAssignment.start_date}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="date" />						
						<fmt:formatDate value="${parsedDate}" var="newParsedDate" type="date" pattern="MM/dd/yyyy hh:mm:ss a z" />
						<td>${newParsedDate}</td>
                      </tr>
                      <tr>
                        <td>Invited By  </td>
                        <td>${studentAssignment.coachId.firstName}${studentAssignment.coachId.lastName}</td>
                      </tr>     
                   <tr>
                        <td>Time Alloted  </td>
                        <td>2:00 Hour</td>
                      </tr>
                     
                    </tbody>
                  </table>
                             
                </div>
           
     
	
	<span class="label label-success"> Score Detail </span>
	<br>
	<div class="col-md-4"><table class="table table-sm">
			<thead>
				<tr>
					<th>Category</th>
					<th>SubCategory</th>
					<th>Result</th>					
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${reports}" var="report">
					<tr>
						<td>${report.key.category.name}</td>
					    <td>${report.key.name}</td>
						<td><span class="label label-success"> ${report.value}</span> </td>
																	
					</tr>
				</c:forEach>
			</tbody>
		</table></div>
		<span class="label label-success"> Overall Score </span>
		<br>
	<div class="col-md-4">
	<h3>${total} Out of ${questions}</h3>
	</div>
  
  </div>  
  <div class="pull-left margDown">
					<a href="<c:url value='/${sessionScope.role}/assignments'/>">
						<button id="back"
				class="btn btn-primary btn-circle alignright"><i class="fa fa-hand-o-left"></i> Back</button>
					</a>
 				
 			</div>
</div>

	
</div>
<div id="editor"></div>
<script src="<c:url value="/metronic/assets/global/plugins/jquery.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery-migrate.min.js" />" type="text/javascript"></script>
<%-- <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"/>"></script> --%>
<%-- <script  src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"/>"></script> --%>
<script type="text/javascript" src="<c:url value="https://code.jquery.com/ui/1.12.0-beta.1/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.1.135/jspdf.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.uriit.ru/jsPDF/libs/adler32cs.js/adler32cs.js"/>"></script>
<script type="text/javascript" src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2014-11-29/FileSaver.min.js"/>"></script>
<%-- <script type="text/javascript" src="<c:url value="libs/Blob.js/BlobBuilder.js"/>"></script> --%>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.addimage.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.standard_fonts_metrics.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.split_text_to_size.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.from_html.js"/>"></script>
<script type="text/javascript" src="<c:url value="/metronic/assets/admin/pages/scripts/jquery.table2excel.js"/>"></script>	
                                               
                                                                                 
