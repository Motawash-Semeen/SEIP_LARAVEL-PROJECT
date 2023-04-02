@extends('master')

@section('content')
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Edit User</h5>

            <!-- Multi Columns Form -->
            <form class="row g-3 offset-3" action="{{url('/dashboard/updateUser/'.$user->id)}}" method="post">
                @csrf
                <div class="col-md-6 border border-black rounded p-3">
                    <div class="col-md-12">
                        <label for="inputName5" class="form-label">Name</label>
                        <input type="text" class="form-control" id="inputName5" name="name"
                            value="{{$user->name}}">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" name="email"
                            value="{{$user->email}}">
                    </div>
                    {{-- <div class="col-md-6">
                        <label for="inputPassword3" class="form-label">Password</label>
                        <input type="text" class="form-control" id="inputPassword3" name="BrandName"
                            value="{{$user->password}}">
                    </div> --}}

                    <div class="col-md-4">
                        <label for="inputState" class="form-label">Role</label>
                        <select id="inputState" class="form-select" name="role">
                            <option value="">-----Select Role-----</option>
                            @foreach ($roles as $role)
                            <option value="{{$role->name}}">{{$role->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="text-center mt-4">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </div>

            </form><!-- End Multi Columns Form -->

        </div>
    </div>
@endsection
