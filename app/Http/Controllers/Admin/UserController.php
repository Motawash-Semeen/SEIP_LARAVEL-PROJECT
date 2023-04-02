<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    public function create(Request $req){
        $user = new User;
        $user->name = $req->name;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->assignRole($req->role);

        $user->save();
        return back();
    }
    public function show(){
        $users = User::all();
        $roles = Role::all();

        return view('include.backend.pages.user.showUser', compact("users", "roles"));
    }

    public function delete($id){
        $user = User::find($id);

        $user->delete();
        return back();
    }
    public function assignRole(Request $request, User $user)
    {
        if ($user->hasRole($request->role)) {
            return back()->with('message', 'Role exists.');
        }

        $user->assignRole($request->role);
        return back()->with('message', 'Role assigned.');
    }

    public function removeRole(User $user, Role $role)
    {
        if ($user->hasRole($role)) {
            $user->removeRole($role);
            return back()->with('message', 'Role removed.');
        }

        return back()->with('message', 'Role not exists.');
    }

    public function edit($id){
        $user = User::find($id);
        $roles = Role::all();
        return view('include.backend.pages.user.editUser', compact("user", "roles"));
    }

    public function update(Request $req, $id){
        $user = User::find($id);
        $user->name = $req->name;
        $user->email = $req->email;
        $user->assignRole($req->role);
        $user->update();
        return redirect('/dashboard/showUser');
    }

    
}
