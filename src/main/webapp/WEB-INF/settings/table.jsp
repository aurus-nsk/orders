<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-striped">
	<thead>
		<tr>
	      <th>#</th>
	      <th>Название</th>
	      <th>Значение</th>
	      <th>Описание</th>
	    </tr>
    </thead>
    <tbody>
	    <c:forEach items="${settings}" var="setting">
		    <tr>
		      <th>${setting.id}</th>
		      <td>${setting.name}</td>
		      <td>${setting.value}</td>
		      <td>${setting.description}</td>
		    </tr>
		</c:forEach>
  	</tbody>
</table>