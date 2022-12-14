<?php
use App\Models\Setting;
$settings = Setting::latest()->first();

?>

<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />

    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

</head>
<body>
    <div class="container-fluid">
        <!-- First section -->
        <nav class="navbar navbar-dark bg-dark">
            <div class="container">
              <h1>
                @if ($settings->forum_name)
                <a href="/" class="navbar-brand">{{$settings->forum_name}}</a>
                @else
                <a href="/" class="navbar-brand">Dev Forum</a>
                @endif
              </h1>
              <form action="{{route('category.search')}}" method="POST" class="form-inline mr-3 mb-2 mb-sm-0">
                @csrf
                <div class="input-group mb-3">
                  <input type="text" class="form-control" name="keyword" placeholder="Search Category" >
                  <div class="input-group-append">
                    <button class="btn btn-outline-success" type="submit" id="button-addon2"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </form>

            @guest
            <a class="nav-item nav-link text-white btn btn-dark" href="{{ route('login') }}">Login</a>
            <a class="nav-item nav-link text-white btn btn-dark" href="{{ route('register') }}">Register</a>
            @endguest

            @auth
            @if (auth()->user()->is_admin)
            <a class="nav-item nav-link text-white btn btn-outline-success" href="/dashboard/home">Admin Panel</a>
            @endif

            <form id="logout-form" action="{{ route('logout') }}" method="POST">
              @csrf
              <button type="submit" class="btn btn-outline-danger">Logout</button>
            </form>


            @endauth

          </div>
        </nav>

        <!-- first section end -->
      </div>
      <div class="container">
        <nav class="breadcrumb">
          <a href="/home" class="breadcrumb-item active"> Dashboard</a>
        </nav>

        @yield('content')
                        {{-- <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div> --}}

    <div class="container-fluid">
        <footer class="small bg-dark text-white">
          <div class="container py-4">
            <ul class="list-inline mb-0 text-center">
              <li class="list-inline-item">
                &copy; 2022 Sistem Informasi Advokasi
              </li>
              <li class="list-inline-item">All Rights Reserved</li>
              <li class="list-inline-item">Terms and Privacy Policy</li>
            </ul>
          </div>
        </footer>
      </div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
