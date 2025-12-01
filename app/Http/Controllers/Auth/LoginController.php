<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('auth')->only('logout');
    }


    public function index()
    {
        return view('auth/login');
    }

    public function authenticated(Request $request, $user)
    {
        if ($user->email_confirmed === 0) {
            Auth::logout();
            return redirect()->route('login')->withErrors([
                'email' => 'Debes confimar tu correo antes de iniciar sesion'
            ]);
        }

        if ($user->activated === 0) {
            Auth::logout();
            return redirect()->route('login')->withErrors([
                'email' => 'Tu cuenta esta desactivada. Contacta con el administrador'
            ]);
        }

        if ($user->type === 'A') {
            return redirect()->route('admin.dashboard');
        }

        return redirect()->route('user.dashboard');
    }
}
