<?php

namespace App\Http\Controllers\API;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        return response()->json($users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'first_name' => 'required|min:2',
            'surname' => 'required|min:2',
            'last_name' => 'required|min:2',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:5',
            'password_confirmation' => 'same:password'
        ]);

        if($validate->fails()) {
            return response()->json([
                'status' => false,
                'errors' => $validate->errors()->first()
            ])->setStatusCode(403);
        }

        $user = User::create([
            'first_name' => $request->first_name,
            'surname' => $request->surname,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        return [
            'status' => true,
            'user' => $user
        ];
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);

        if($user->get()->isEmpty()) {
            return response()->json([
                'status' => false,
                'danger' => true
            ]);
        }

        return response()->json($user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);


        if(empty($user)) {
            return response()->json([
              'status' => false
            ])->setStatusCode(403);
        }

        return response()->json([
            'status' => true,
            'user' => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);

        if(empty($user)) {
            return response()->json([
                'status' => false
            ])->setStatusCode(404);
        }

        $validate = Validator::make($request->all(), [
            'first_name' => 'required|min:2',
            'surname' => 'required|min:2',
            'last_name' => 'required|min:2',
            'password' => 'required|min:5',
            'password_confirmation' => 'same:password'
        ]);

        if($validate->fails()) {
            return response()->json([
                'status' => false,
                'error' => $validate->errors()->first()
            ])->setStatusCode(403);
        }

        $update = $user->where('id', $id)->update([
            'first_name' => $request->first_name,
            'surname' => $request->surname,
            'last_name' => $request->last_name,
            'password' => Hash::make($request->password),
        ]);

        if(!$update) {
            return response()->json([
                'status' => false
            ])->setStatusCode(200);
        } else {
            return response()->json([
                'status' => true,
            ])->setStatusCode(200);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
