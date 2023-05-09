<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // TODO get all users from users table 
        return User::all();
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
        // TODO create new user
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'email_verified_at' => $request->email_verified_at,
            'password' => $request->password
        ]);
        return 'Created sucessfully!';
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //TODO get one use by id 
        return User::find($id);
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
        // TODO Update the the user which is equal the id of user input

        User::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'email_verified_at' => $request->email_verified_at,
            'password' => $request->password
        ]);
        return 'Updated sucessfully!';
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // TODO delete user by ID 
        User::where('id', $id)->delete();
        return 'Deleted sucessfully!';
    }
}
