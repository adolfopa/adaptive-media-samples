<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<div class="container">

<%
String[] mimeTypes = {"image/bmp", "image/gif", "image/jpeg", "image/pjpeg", "image/png", "image/tiff", "image/x-citrix-jpeg", "image/x-citrix-png", "image/x-ms-bmp", "image/x-png", "image/x-tiff"};

List<FileEntry> fileEntries = DLAppServiceUtil.getFileEntries(scopeGroupId, DLFolderConstants.DEFAULT_PARENT_FOLDER_ID, mimeTypes);

int columns = 0;

for (FileEntry fileEntry : fileEntries) {
	boolean row = ((columns % 2) == 0);
%>

	<c:if test="<%= row %>">
		<c:if test="<%= columns != 0 %>">
			</div>
		</c:if>

		<div class="row">
	</c:if>

	<div class="col-md-6">
		<liferay-adaptive-media:img class="img-fluid" fileVersion="<%= fileEntry.getFileVersion() %>" />
	</div>

	<%
	columns++;
}
%>

</div>