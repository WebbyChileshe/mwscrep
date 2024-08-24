<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
.admin_holder {
	height: 100dvh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.admin_box {
	/* width: 500px; */
	padding: 20px;
	margin: 5px;
}

.admin_box h1 {
	font-size: 1.75rem;
	margin-bottom: 20px;
	text-align: center;
}

.admin_box select, .admin_box input {
	margin-bottom: 15px;
}

.admin_box .btn-primary {
	width: 100%;
}
</style>
</head>

<body>

	<div class="admin_holder">
		<div class="admin_box border rounded shadow p-4">
			<h1>Harmtedy.Store Admin Controller</h1>
			<div class="login_details">
				<form id="loginForm" action="login" method="post">
					<div class="mb-3">
						<label for="branchSelect" class="form-label">Select Branch</label>
						<select class="form-select" id="branchSelect" name="branch"
							aria-label="Branch select" required>
							<option selected disabled>Select a branch</option>
							<option value="cbu_branch">CBU-Branch</option>
							<option value="mu_branch">MU-Branch</option>
							<option value="iringa_branch">Iringa-Branch</option>
							<option value="warehouse">Lusaka Warehouse</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="username" class="form-label">Username</label> <input
							type="text" class="form-control" id="username" name="username"
							placeholder="Enter your username" required>
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password</label> <input
							type="password" class="form-control" id="password"
							name="password" placeholder="Enter your password" required>
					</div>
					<button type="submit" class="btn btn-primary">Login</button>
				</form>
				
				<!-- to be displayed when credentials are worong -->
				 <c:if test="${not empty errorMessage}">
                <p style="color:red; text-align:center; width:100%;" class="mt-2">${errorMessage}</p>
            </c:if>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>