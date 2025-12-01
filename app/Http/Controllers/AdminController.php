<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Company;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::where('email_confirmed', '1')
            ->where('deleted', 0)
            ->where('type', 'U')
            ->with('company')->orderBy('activated', 'desc')->get();
        return view('admin.users.dashboard', compact('users'));
    }

    public function activate($id)
    {
        $user = User::findOrFail($id);
        $user->activated = 1;
        $user->save();

        return redirect()->back();
    }

    public function deactivate($id)
    {
        $user = User::findOrFail($id);
        $user->activated = 0;
        $user->save();
        return redirect()->back();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user = User::with('company')->findOrFail($id);
        $companies = Company::all();
        return view('admin.users.userEdit', compact('user', 'companies'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user = User::findOrFail($id);

        $user->update([
            'firstname' => $request->input('firstname'),
            'secondname' => $request->input('secondname'),
            'email' => $request->input('email'),
            'company_id' => $request->input('company_id')
        ]);

        return redirect()->route('admin.users.dashboard');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        $user->deleted = 1;
        $user->save();
        return redirect()->back();
    }
}
