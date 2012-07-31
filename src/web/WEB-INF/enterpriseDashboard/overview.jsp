<%--
  - Author: TCSASSEMLBER
  - Version: 1.0 (Module Assembly - TopCoder Cockpit New Enterprise Dashboard Setup and Financial part)
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Description: The overview page of the new enterprise dashboard
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/includes/taglibs.jsp" %>
<fmt:setLocale value="en_US"/>
<ui:dashboardPageType tab="enterprise"/>
<c:set var="CURRENT_SIDEBAR" value="overview" scope="request"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../includes/htmlhead.jsp"/>
    <!--[if IE 7]>
    <link rel="stylesheet" type="text/css" media="screen" href="/css/dashboard-ie7.css?v=214041"/>
    <![endif]-->
    <link rel="stylesheet" type="text/css" media="screen" href="/css/enterpriseDashboard.css"/>

    <script type="text/javascript" src="/scripts/highcharts.js"></script>
    <script type="text/javascript" src="/scripts/exporting.js"></script>
    <script type="text/javascript"  src="/scripts/enterpriseDashboard.js"></script>
</head>

<body id="page" class="dashboardPage">
    <div id="wrapper">
        <div id="wrapperInner">
            <div id="container">
                <div id="content">

                    <jsp:include page="../includes/header.jsp"/>

                    <div id="wholeContent">
                    <div id="wholeArea">

                    <div class="enterpriseOverView">

                    <jsp:include page="../includes/enterpriseDashboard/sidebar.jsp"/>

                    <!-- main section -->
                    <div id="mainSection">
                    <h2>Overview</h2>

                    <!-- filter panel -->
                    <jsp:include page="../includes/enterpriseDashboard/filterHeader.jsp"/>
                    <!-- End .filterPanel -->

                    <!-- Financial Section in OverView -->
                    <div class="sectionContainer overFinancialSection">
                        <div class="sectionInner">

                            <div class="financailsTitle">
                                <h3>Financials</h3>
                                <a href="javascript:;" class="icon" rel="View the financial statistics of the filtered projects">!</a>
                                <a href="<s:url action='financial' namespace='/enterpriseDashboard'/>" class="viewAllLink">View all projects</a>
                            </div>
                            <!-- title -->

                            <div class="mainSection">

                                <div class="ajaxTableLoader"><img src="/images/rss_loading.gif" alt="loading" /></div>

                                <div class="dateSection">

                                    <!-- side bar -->
                                    <div class="financailSideBar">
                                        <div class="sideBarInner">
                                            <ul>
                                                <li></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- End .financailSideBar -->

                                    <!-- table -->
                                    <div class="financailTableData">
                                        <h4>Project Information</h4>
                                        <table border="0" cellspacing="0" cellpadding="0" id="overviewFinancailData">
                                            <colgroup>
                                                <col width="23%" />
                                                <col />
                                                <col width="12%" />
                                                <col width="12%" />
                                                <col width="12%" />
                                            </colgroup>
                                            <thead>
                                            <tr>
                                                <th>Project Name</th>
                                                <th>Project Budget</th>
                                                <th>Total Budget</th>
                                                <th>Actual Cost</th>
                                                <th>Projected Cost</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr class="last">
                                                <td colspan="5"></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- End .financailTableData -->

                                    <div class="clear"></div>

                                </div>

                            </div>
                            <!-- End .mainSection -->

                            <div class="corner tl"></div>
                            <div class="corner tr"></div>

                        </div>
                    </div>
                    <!-- End .overFinancialSection -->

                    <!-- left column -->
                    <div class="leftColumn">

                        <!-- total Spend -->
                        <div class="sectionContainer overTotalSpendSection">
                            <div class="sectionInner">

                                <div class="totalSpendTitle">
                                    <h3>Total Spend</h3>
                                    <a href="javascript:;" class="icon" rel="Total Amount Spent for the Projects each month is shown here.">!</a>
                                    <a href="<s:url action='financial' namespace='/enterpriseDashboard'/>" class="viewAllLink">View All</a>
                                </div>
                                <!-- title -->

                                <!-- container -->
                                <div class="containerSection">
                                    <div id="overviewTotalSpend">
                                        <div class="ajaxTableLoader"><img src="/images/rss_loading.gif" alt="loading" /></div>
                                    </div>
                                </div>
                                <!-- End .containerSection -->

                                <div class="corner tl"></div>
                                <div class="corner tr"></div>

                            </div>
                        </div>
                        <!-- End .overTotalSpendSection -->

                        <!-- total Spend -->
                        <div class="sectionContainer overRoadMapSection">
                            <div class="sectionInner">

                                <div class="roadMapTitle">
                                    <h3>Road Map</h3>
                                    <a href="javascript:;" class="icon" rel="Showing the Overdue, Upcoming, and Completed Releases.">!</a>
                                    <a href="javascript:;" class="viewAllLink">View All</a>
                                </div>
                                <!-- title -->

                                <!-- container -->
                                <div class="containerSection noBorderSection">
                                    <div id="tab">
                                        <div class="tabPanel">
                                            <ul>
                                                <li class="overDue"><a href="javascript:;" class="current"><span><span>Overdue</span></span></a></li>
                                                <li class="upcoming"><a href="javascript:;"><span><span>Upcoming</span></span></a></li>
                                                <li class="completed"><a href="javascript:;"><span><span>Completed</span></span></a></li>
                                            </ul>
                                        </div>

                                        <div class="placeHolder"></div>

                                        <div class="tabContainer">

                                            <!-- overDueTable -->
                                            <div class="tabSection overDueTable">
                                                <!-- End .pagePanel -->
                                                <table border="0" cellspacing="0" cellpadding="0" id="overDueData">
                                                    <colgroup>
                                                        <col width="65%" />
                                                        <col />
                                                    </colgroup>
                                                    <thead>
                                                    <tr>
                                                        <th>OverDue Releases</th>
                                                        <th>Date</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td colspan="2" class="alignCenter">
                                                            <div class="ajaxTableLoader">
                                                                <%--<img src="/images/rss_loading.gif" alt="loading" />--%>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- End .overDueTable -->

                                            <!-- upcomingTable -->
                                            <div class="tabSection upcomingTable">
                                                <!-- End .pagePanel -->
                                                <table border="0" cellspacing="0" cellpadding="0" id="upcomingData">
                                                    <colgroup>
                                                        <col width="65%" />
                                                        <col />
                                                    </colgroup>
                                                    <thead>
                                                    <tr>
                                                        <th>Upcoming Releases</th>
                                                        <th>Date</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td colspan="2" class="alignCenter">
                                                            <div class="ajaxTableLoader">
                                                                <%--<img src="/images/rss_loading.gif" alt="loading" />--%>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- End .upcomingTable -->

                                            <!-- completedTable -->
                                            <div class="tabSection completedTable">
                                                <!-- End .pagePanel -->
                                                <table border="0" cellspacing="0" cellpadding="0" id="completedData">
                                                    <colgroup>
                                                        <col width="65%" />
                                                        <col />
                                                    </colgroup>
                                                    <thead>
                                                    <tr>
                                                        <th>Completed Releases</th>
                                                        <th>Date</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td colspan="2" class="alignCenter">
                                                            <%--<div class="ajaxTableLoader"><img src="/images/rss_loading.gif" alt="loading" /></div>--%>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- End .completedTable -->

                                        </div>

                                    </div>
                                </div>
                                <!-- End .containerSection -->

                                <div class="corner tl"></div>
                                <div class="corner tr"></div>

                            </div>
                        </div>
                        <!-- End .overTotalSpendSection -->

                    </div>
                    <!-- End .leftColumn -->

                    <!-- middle column -->
                    <div class="middleColumn">

                        <!-- Projects Health -->
                        <div class="sectionContainer overprojectsHealthSection">
                            <div class="sectionInner">

                                <div class="projectHealthTitle">
                                    <h3>Projects Health</h3>
                                    <a href="javascript:;" class="icon" rel="Showing the overall projects Health of all projects.">!</a>
                                </div>
                                <!-- title -->

                                <!-- container -->
                                <div class="containerSection">
                                    <div id="overviewProjectHealth">
                                        <%--<div class="ajaxTableLoader"><img src="/images/rss_loading.gif" alt="loading" /></div>--%>
                                    </div>
                                </div>
                                <!-- End .containerSection -->

                                <div class="corner tl"></div>
                                <div class="corner tr"></div>

                            </div>
                        </div>
                        <!-- End .overprojectsHealthSection -->

                        <!-- pipeline -->
                        <div class="sectionContainer overpipelineSection">
                            <div class="sectionInner">

                                <div class="pipelinehTitle">
                                    <h3>Pipeline</h3>
                                    <a href="javascript:;" class="icon" rel="A graph depicting the projects in Pipeline is shown here.">!</a>
                                    <a href="javascript:;" class="viewAllLink">View All</a>
                                </div>
                                <!-- title -->

                                <!-- container -->
                                <div class="containerSection">
                                    <div id="overviewPipeline">
                                        <%--<div class="ajaxTableLoader"><img src="/images/rss_loading.gif" alt="loading" /></div>--%>
                                    </div>
                                </div>
                                <!-- End .containerSection -->

                                <div class="corner tl"></div>
                                <div class="corner tr"></div>

                            </div>
                        </div>
                        <!-- End .overpipelineSection -->

                    </div>
                    <!-- End .middleColumn -->

                    <!-- right column -->
                    <div class="rightColumn">

                        <!-- Projects -->
                        <div class="sectionContainer overProjectsSection">
                            <div class="sectionInner">

                                <div class="projectTitle">
                                    <h3>Projects</h3>
                                    <a href="javascript:;" class="icon" rel="List of recently modified/ created projects is shown here. Hover on Project Name  to see more details.">!</a>
                                    <a href="javascript:;" class="viewAllLink">View All</a>
                                </div>
                                <!-- title -->

                                <!-- container -->
                                <div class="containerSection noBorderSection">
                                    <table border="0" cellpadding="0" cellspacing="0" id="overProjectsTableData">
                                        <colgroup>
                                            <col width="45%" />
                                            <col />
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th>Project Name</th>
                                            <th>Next Milestone</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td colspan="2" class="alignCenter">
                                                <div class="ajaxTableLoader">
                                                    <%--<img src="/images/rss_loading.gif" alt="loading" />--%>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End .containerSection -->

                                <div class="corner tl"></div>
                                <div class="corner tr"></div>
                            </div>
                        </div>
                        <!-- End .overprojectsHealthSection -->

                        <!-- Community -->
                        <div class="sectionContainer overCommunitySection">
                            <div class="sectionInner">

                                <div class="communityTitle">
                                    <h3>Community</h3>
                                    <a href="javascript:;" class="icon" rel="Showing the overall contri-bution for the projects from each country.">!</a>
                                    <a href="javascript:;" class="viewAllLink">View All</a>
                                </div>
                                <!-- title -->

                                <!-- container -->
                                <div class="containerSection noBorderSection">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <colgroup>
                                            <col width="45%" />
                                            <col width="55%" />
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th>Country Name</th>
                                            <th>%</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td colspan="2" class="alignCenter">
                                                <%--<div class="ajaxTableLoader"><img src="/images/rss_loading.gif" alt="loading" /></div>--%>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div id="overviewCommunity"></div>
                                </div>
                                <!-- End .containerSection -->

                                <div class="corner tl"></div>
                                <div class="corner tr"></div>

                            </div>
                        </div>
                        <!-- End .overCommunitySection -->

                    </div>
                    <!-- End .rightColumn -->

                    <div class="clear"></div>

                    </div>
                    <!-- End #mainSection -->

                    </div>

                    </div>
                    </div>

                    <jsp:include page="../includes/footer.jsp"/>

                </div>
            </div>
            <!-- End #container -->
        </div>
    </div>
    <!-- End #wrapper -->
    <jsp:include page="../includes/enterpriseDashboard/filterPopup.jsp"/>

</body>
<!-- End #page -->

</html>