<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/welcome';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'firstname' => ['required', 'string', 'max:255'],
            'secondname' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        return User::create([
            'firstname' => $data['firstname'],
            'secondname'=> $data['secondname'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }

    protected function store(Request $request)
    {
        $request->validate([
            'firstname' => 'required|string|max:255',
            'secondname' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|confirmed|min:6',
        ]);

        $user = User::create([
            'firstname' => $request->firstname,
            'secondname' => $request->secondname,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'company_id' => 1,         // si quieres asignar un valor por defecto
            'type' => 'user',          // idem
            'email_confirmed' => true, // idem
            'activated' => true,       // idem
            'iscontact' => false,      // idem
            'deleted' => false,        // idem
        ]);

        auth()->login(user: $user);

        return redirect()->route('home');
    }
}
