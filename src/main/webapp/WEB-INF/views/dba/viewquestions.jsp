<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>


<c:if test="${not empty success}">
	<%@ include file="/WEB-INF/views/LogPopUp.jsp"%>
</c:if>
<div class="panel panel-success">

	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-question-circle fa-fw"></i>Question List
		</h3>
	</div>
	<div class="panel-body">
		<div class="portlet-body">

			<div class="table-toolbar">
				<div class="row">
					<div class="col-md-10">
				
					 <c:if test="${sessionScope.role == 'admin' || sessionScope.role == 'dba'}">
						<div class="form-group">

							<a href="addquestion" class="btn btn-primary"><i
								class="fa fa-plus"></i> Add New </a> 
								
								
								<a href="importData"
								class="btn btn-success"><i class="fa fa-plus"></i> Import
								Questions </a>
						</div>
						</c:if>
					</div>
				</div>
			</div>

			<table class="table table-striped table-hover table-bordered"
				id="sample_editable_1">
				<thead>
					<tr>
						<th>Question Id</th>
						<th>Category</th>
						<th>Sub Category</th>
						<th>Question</th>
						<th>Choices</th>
						<!-- 	<th>Category</th>-->
						<!-- <th>Edit</th> -->
						<!-- <th>Delete</th> -->
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${questions}" var="question">
						<c:if test="${question!= null}">
							<tr id="${question.id}">
								<td>${question.id}</td>
								<td>${question.subcategory.category.name}</td>
								<td>${question.subcategory.name}</td>
								<td>${question.description}</td>
								<td><ol type="A">
										<c:forEach items="${question.choices}" var="choice"
											varStatus="i">
											<li><c:choose>
													<c:when test="${choice.answer== true}">
														<p class="text-success">${choice.description}</p>
														<br />
													</c:when>
													<c:otherwise>
														<p>${choice.description}</p>
														<br />
													</c:otherwise>
												</c:choose></li>
										</c:forEach>
									</ol></td>
								<%-- <td><a href="<c:url value='/dba/editquestion/${question.id}' />">${question.id}</a></td>
						 
								<td><button value="${question.id}" type="button"
									class="btnDelUser btn btn-xs btn-default pull-right">Delete</button></td> --%>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

