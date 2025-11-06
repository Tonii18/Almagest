<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::where('email_confirmed','1')
                    ->where('deleted',0)
                    ->where('type','u')
                    ->with('company')->get();
        return view('admin.dashboard', compact('users'));
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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        $user -> deleted = 1;
        $user->save();
        return redirect()->back();
    }
}
