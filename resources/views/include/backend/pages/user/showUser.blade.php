@extends('master')

@section('content')
    <div class="container-fluid px-4">
        <h1 class="mt-4">Tables</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">Dashboard</a></li>
            <li class="breadcrumb-item active">User</li>
        </ol>

        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                User DataTable
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Actions</th>
                        </tr>
                    </tfoot>
                    <tbody>

                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>

                                <td>
                                    @if ($user->roles)
                                        @foreach ($user->roles as $user_role)
                                            <p>{{ $user_role->name }}</p>
                                        @endforeach
                                    @endif
                                </td>
                                <td>
                                    <a href="{{url('/dashboard/editUser/'.$user->id)}}" class='btn btn-info btn-sm'>Edit</a>
                                    <button class='btn btn-danger btn-sm' data-bs-toggle="modal"
                                        data-bs-target="#basicModal">Delete</button>
                                    <!-- Basic Modal -->
                                    <div class="modal fade" id="basicModal" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Confirmation</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Confirm Delete?
                                                </div>
                                                <div class="modal-footer ">
                                                    <button type="button" class="btn btn-secondary "
                                                        data-bs-dismiss="modal">Close</button>
                                                    <a href="{{url('/dashboard/deleteUser/'.$user->id)}}" class="btn btn-primary">Confirm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
