@extends('layouts.login-master')

@section('sidebar')
@parent


@stop

@section('content')

<div class="text-center">
    <img src="assets/img/logo.png" alt="Metis Logo">
</div>
<div class="tab-content">


    <!-- if there are login errors, show them here -->
    @if (Session::get('loginError'))
    <div class="alert alert-danger">{{ Session::get('loginError') }}</div>
    @endif

    <p>
        {{ $errors->first('email') }}
        {{ $errors->first('password') }}
    </p>

    <div id="login" class="tab-pane active">
            {{ Form::open(array('url' => 'login', 'class' => 'form-signin')) }}
            <p class="text-muted text-center">
        <h1>Page Not Found...</h1>
            </p>


        {{ Form::close() }}
    </div>
    <div id="forgot" class="tab-pane">
        <form action="index.html" class="form-signin">
            <p class="text-muted text-center">Enter your valid e-mail</p>

        </form>
    </div>

</div>



@stop
