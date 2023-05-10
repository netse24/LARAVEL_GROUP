<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // TODO get all users from users table 
        $data =  User::all();
        return response()->json(array('messsage' => 'successfully', 'data' => $data), 200);
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
        // TODO create new user with validation each columns 
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:20',
            'email' => 'required|email|unique:users,email',
            'email_verified_at' => 'nullable',
            'password' => [
                'required',
                'min:5',             // must be at least 10 characters in length
                'regex:/[a-z]/',      // must contain at least one lowercase letter
                'regex:/[A-Z]/',      // must contain at least one uppercase letter
                'regex:/[0-9]/',      // must contain at least one digit
                'regex:/[@$!%*#?&]/', // must contain a special character
            ],
        ]);
        if ($validator->fails()) {
            return $validator->errors();
        } else {
            User::create([
                'name' => $request->name,
                'email' => $request->email,
                'email_verified_at' => $request->email_verified_at,
                'password' => $request->password
            ]);
            return response()->json(array('message' => 'Post data successfully'), 200);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //TODO get one use by id 
        $show =  User::find($id);
        return response()->json(array('message' => 'Shown data successfully', 'show' => $show), 200);
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

        // User::where('id', $id)->update([
        //     'name' => $request->name,
        //     'email' => $request->email,
        //     'email_verified_at' => $request->email_verified_at,
        //     'password' => $request->password
        // ]);

        //-----------------------------------------
        // the AI way

        $user = User::find($id);
        $user->fill([
            'name' => $request->name,
            'email' => $request->email,
            'email_verified_at' => $request->email_verified_at,
            'password' => $request->password
        ]);
        $user->save();
        return response()->json(array('message' => 'Updated data successfully'), 200);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // TODO delete user by ID 
        User::where('id', $id)->delete();
        return response()->json(array('message' => 'Deleted data successfully!', 'id' => $id), 200);
    }

    // --------- RELATIONSHIP MANY TO MANY -------------

    public function getUserRole()
    {
        $users = DB::table('users')
            ->select('users.*', 'roles.*')
            ->join('user_roles', 'users.id', '=', 'user_roles.user_id')
            ->join('roles', 'user_roles.role_id', '=', 'roles.id')
            ->get();
        return response()->json(array('message' => 'Selected join successfully!', 'data' => $users), 200);

    }
}
