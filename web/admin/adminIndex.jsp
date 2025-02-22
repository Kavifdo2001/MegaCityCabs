<%@page contentType="text/html" pageEncoding="UTF-8"%>

<title>Admin Home</title>

 <%@ include file="/admin/layout/adminNav.jsp" %>

 <!-- Main Content -->
        <div class="container">
            <h1>Admin Dashboard</h1>
            <p>Welcome to the admin panel. Here you can manage your application.</p>

            <!-- Example Cards -->
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Users</h5>
                            <p class="card-text">Manage users and their permissions.</p>
                            <a href="#" class="btn btn-primary">Go to Users</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Mange Cars</h5>
                            <p class="card-text">Manage Cars and Prices.</p>
                            <a href="addCar.jsp" class="btn btn-primary">Go to Cars</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Settings</h5>
                            <p class="card-text">Configure system settings.</p>
                            <a href="#" class="btn btn-primary">Go to Settings</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Mange Cars</h5>
                            <p class="card-text">Manage Cars and Prices.</p>
                            <a href="carList.jsp" class="btn btn-primary">See all Cars</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS (optional) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    