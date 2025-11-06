<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\VerifiesEmails;
use Illuminate\Support\Facades\URL;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Auth\Events\Verified;

class VerificationController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Email Verification Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling email verification for any
    | user that recently registered with the application. Emails may also
    | be re-sent if the user didn't receive the original email message.
    |
    */

    use VerifiesEmails;

    /**
     * Where to redirect users after verification.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth') -> except('verify');
        $this->middleware('signed')->only('verify');
        $this->middleware('throttle:6,1')->only('verify', 'resend');
    }

    public function verify(Request $request, $id, $hash){
        // if(!URL::hasValidRelativeSignature($request)){
        //     abort(403, 'Enlace de verificación inválido');
        // }

        $user = User::findOrFail($id);

        // if(!hash_equals((string) $hash, sha1($user -> getEmailForVerification()))){
        //     abort(403, 'Enlace de verificación inválido');
        // }

        if(!$user -> hasVerifiedEmail()){
            $user -> markEmailAsVerified();
            $user -> update(['email_confirmed' => 1]);

            event(new Verified($user));
        }

        return redirect() -> route('login') -> with('status', 'Tu correo ha sido verificado. Ya puedes iniciar sesion');
    }
}
