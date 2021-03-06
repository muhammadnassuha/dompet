
<!DOCTYPE html>
<html lang="zxx">
<head>
    
    <title>Laravel - Login </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="{{ asset('auth/css/bootstrap.min.css')}}">
    <link type="text/css" rel="stylesheet" href="{{ asset('auth/css/font-awesome.min.css')}}">
    <link type="text/css" rel="stylesheet" href="{{ asset('auth/css/flaticon.css')}}">
    <link rel="shortcut icon" href="{{ asset('auth/img/favicon.ico')}}" type="image/x-icon" >
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <script src="https://use.fontawesome.com/870b48b371.js"></script>
    <link type="text/css" rel="stylesheet" href="{{ asset('auth/css/style.css')}}">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="{{ asset('auth/css/default.css')}}">

</head>
<body id="top">
<div class="page_loader"></div>

<!-- Login 1 start -->
<div class="login-1">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="login-inner-form">
                    <div class="details">
                        
                        <h3>Login</h3>
                        <form method="POST" action="{{ route('login') }}">
                        @csrf

                            <div class="form-group">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email"  required autocomplete="email" autofocus placeholder="Email" value="demo@example.com">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password" value="Na2so4h2o">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                           
                            <div class="form-group mb-0">
                                <button type="submit" class="btn-md btn btn-block">Login</button>
                            </div>
                        </form>
                        
                    </div>
                    <div class="footer">
                        <!-- <span>Don't have an account? <a href="{{ route('register') }}">Register here</a></span> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- External JS libraries -->
<script src="{{ asset('auth/js/jquery-2.2.0.min.js')}}"></script>
<script src="{{ asset('auth/js/popper.min.js')}}"></script>
<script src="{{ asset('auth/js/bootstrap.min.js')}}"></script>
<!-- Custom JS Script -->
</body>
</html>