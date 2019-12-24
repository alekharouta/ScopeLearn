<aside>
<div class="whiteBg">
    <div class="hdrBlk hidden-xs">
        <h2><%=(String)request.getSession(false).getAttribute("loginUserName")%></h2>
<%--         <p class="smlTxt">Last login on <%=(String)request.getSession(false).getAttribute("lastLogin")%></p> --%>
    </div>
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
    </button>
    <div class="sidehdr hidden-xs">
       <!--  <h6>Management</h6>  --><a href="#" class="closeall">Collapse All </a> | <a href="#" class="openall">Open All</a>
    </div>
    <div class="sidebar" >
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <%-- <li class="panel panel-default">
               <div><a href="<%=request.getContextPath()%>/showCertificateHierarchyPage.htm" id="certHierarchy"><span class="ico ico1"></span> <span class="title">CA Hierarchy</span>  </a></div> 
            </li> --%>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false"><span class="ico ico2"></span> <span class="title">Profile Management </span></a>
                <div id="collapseOne" class="panel-collapse collapse " role="tabpanel">
                    <ul>
                        <li id="profileMngCertProfile"><a href="#">Profile</a></li>
                        <li id="keyProfileMgmt"><a href="#">Profile</a></li>
                    </ul>
                </div>
            </li>
           <%--  <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false"><span class="ico ico3"></span> <span class="title">User Certificate Management</span></a>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                       	<li id="userEnrollment"><a href="<%=request.getContextPath()%>/userEnrollment.htm">Enrollment</a></li>
                        <li id="userRevokeMenu"><a href="<%=request.getContextPath()%>/revokeUser.htm">Revocation/Suspension</a></li>
                        <li id="userCertReinstateMenu"><a href="<%=request.getContextPath()%>/reinstateUser.htm">Reinstate</a></li>
						<li id="userCertSearchMenu"><a href="<%=request.getContextPath()%>/UserCerts.htm">Search</a></li>
						<li id="userCertSigningCSR"><a href="<%=request.getContextPath()%>/signingCSR.htm">Signing CSR</a></li>
                    </ul>
                </div>
            </li>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false"><span class="ico ico4"></span> <span class="title">CA Certificate Management</span></a>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li id="caEnrollment"><a href="<%=request.getContextPath()%>/caEnrollment.htm">Enrollment</a></li>
                        <li id="caCertsMenu"><a href="<%=request.getContextPath()%>/CaCerts.htm">CA Certificates</a></li>
                        <li id="caRevokeMenu"><a href="<%=request.getContextPath()%>/revokeCA.htm">Revocation</a></li>
                        <li id="caSearchMenu"><a href="<%=request.getContextPath()%>/searchCA.htm">Search</a></li>
                        <li id="signingCSRMenu"><a href="<%=request.getContextPath()%>/caSigningCSR.htm">Signing CSR</a></li>
                    </ul>
                </div>
            </li>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseCRL" aria-expanded="false"><span class="ico ico5"></span> <span class="title">CERT/CRL Management</span></a>
                <div id="collapseCRL" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li id="crlProfileMenu"><a href="<%=request.getContextPath()%>/manageCRL.htm">Manage CRL</a></li>
		                <li id="publishCertCRLMenu"><a href="<%=request.getContextPath()%>/publishCertAndCrl.htm">Publish CERT/CRL </a></li>
		                <!-- <li><a href="crl-management.html">Generate LDIF</a></li> -->
                    </ul>
                </div>
            </li>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOCSP" aria-expanded="false"><span class="ico ico6"></span> <span class="title">OCSP Management</span></a>
                <div id="collapseOCSP" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li id="ocspMenu"><a href="<%=request.getContextPath()%>/ocsp.htm">Manage OCSP</a></li>
                    </ul>
                </div>
            </li>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" ><span class="ico ico7"></span> <span class="title">Key Management</span></a>
                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li id="keyRecoveryMenu"><a href="<%=request.getContextPath()%>/keyRecovery.htm">Key Recovery</a></li>
                    </ul>
                </div>
            </li> 
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false"><span class="ico ico8"></span> <span class="title">Roles & Users Management</span></a>
                <div id="collapseFive" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li>
                        	<a id="createAndManageLink" href="<%=request.getContextPath()%>/showCreateAndManageUser.htm">Create & Manage User</a></li>
                    </ul>
                </div>
            </li>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false"><span class="ico ico9"></span> <span class="title">Reports</span></a>
                <div id="collapseSix" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li id="logReportsMenu"><a href="<%=request.getContextPath()%>/LogReport.htm">Logs</a></li>
                        <li id="crlReportsMenu"><a href="<%=request.getContextPath()%>/CrlReport.htm">CRL</a></li>
                        <li id="certStatsMenu"><a href="<%=request.getContextPath()%>/certStatistics.htm">Certificate Statistics</a></li>
                        <li id="allCertsMenu"><a href="<%=request.getContextPath()%>/ReportsCerts.htm">All Certificates</a></li>
                        <li id="issuedCertsMenu"><a href="<%=request.getContextPath()%>/loadIssuedData.htm">Active Certificates</a></li>
                        <li id="revokedCertsMenu"><a href="<%=request.getContextPath()%>/loadData.htm">Revoked Certificates</a></li>
                        <li id="suspendCertsMenu"><a href="<%=request.getContextPath()%>/loadSuspendedData.htm">Suspended Certificates</a></li>
                        <!-- <li><a href="#">Re-issued Certificates</a></li> -->
                        <li id="expiredCertsMenu"><a href="<%=request.getContextPath()%>/ExpiredReportsCerts.htm">Expired Certificates</a></li>
                    </ul>
                </div>
            </li>
            <li class="panel panel-default">
            	<a href="<%=request.getContextPath()%>/backup.htm" id="backupMenu" class=""><span class="ico ico10"></span>   <span class="title">Backup</span></a>
            </li>
            <li class="panel panel-default">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false"><span class="ico ico11"></span> <span class="title">Application</span></a>
                <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel">
                    <ul>
                        <li id="setupRegMenu"><a href="<%=request.getContextPath()%>/editMetrix.htm">Setup & Registration</a></li>
                        <li id="connDiagnosisMenu"><a href="<%=request.getContextPath()%>/connectivityDiagnosis.htm">Connectivity Diagnosis</a></li> 
                        <li id="externalAppRegMenu"><a href="<%=request.getContextPath()%>/showExternalApps.htm">External Applications</a></li>
                    </ul>
                </div>
            </li> --%>
        </ul>
    </div>
    </div>
    <div class="poweredby-section hidden-xs">
		<div>scopeLearn (v1.0.0) Powered by</div>
		<a href="#">ARGroup</a>
	</div>  
    </div>
</aside>
