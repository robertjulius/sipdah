<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<s:head />
<sj:head />
</head>
<body>
	<table>
		<tr>
			<td class="pageTitle1"><s:text name="resource.page.title" /></td> 
		</tr>
		<tr>
			<td class="pageTitle2"><s:text name="resource.page.title2.detail" /></td>
		</tr>
	</table>
	<s:form theme="simple">
		<s:if test="hasActionErrors()">
			<table>
				<s:actionerror />
				<s:fielderror />
			</table>
		</s:if>
		<table class="form">
			<tr>
				<td>
					<table class="grid">
						<thead>
							<tr>
								<td colspan="2"><s:text name="resource.moduleInformation" /></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="right" width="100px"><b><s:text name="resource.moduleName" /></b></td>
								<td align="left" width="300px"><s:property value="old.name" /></td>
							</tr>
							<tr>
								<td align="right" width="100px"><b><s:text name="resource.description" /></b></td>
								<td align="left" width="300px"><s:property value="old.description" /></td>
							</tr>
							<tr>
								<td align="right" width="100px"><b><s:text name="resource.firstEntry" /></b></td>
								<td align="left" width="300px"><s:property value="old.firstEntry" /></td>
							</tr>
							<tr>
								<td align="right" width="100px"><b><s:text name="resource.parent" /></b></td>
								<td align="left" width="300px"><s:property value="old.parent.name" /></td>
							</tr>
							<tr>
								<td align="left" colspan="2">
									<table>
										<tr>
											<td><b><s:text name="resource.accessPaths" /></b></td>
										</tr>
										<s:iterator value="old.accessPaths" status="rowstatus">
											<tr>
												<td>&#149; <s:property value="url" /></td>
											</tr>
										</s:iterator>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table>
						<tr>
							<td><input type="button" value="<s:text name="resource.back"/>"
								onclick="$(this).closest('form').attr('action', '<%=request.getContextPath()%>/modules/module/searchResult.action'); $(this).closest('form').submit();" /></td>
							<td><input type="button" value="<s:text name="resource.edit"/>"
								onclick="$(this).closest('form').attr('action', '<%=request.getContextPath()%>/modules/module/prepareUpdate.action'); $(this).closest('form').submit();" /></td>
							<td><input type="button" value="<s:text name="resource.delete"/>"
								onclick="$(this).closest('form').attr('action', '<%=request.getContextPath()%>/modules/module/executeDelete.action'); if (confirmAction()) {$(this).closest('form').submit();}" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</s:form>
</body>
<script type="text/javascript">
	window.onload = function() {
		stripeTable($('table.grid'));
	}
</script>
</html>
