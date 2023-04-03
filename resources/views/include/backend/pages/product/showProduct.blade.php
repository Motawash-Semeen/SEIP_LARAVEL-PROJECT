@extends('master')

@section('content')

        <div class="container-fluid px-4">
            <h1 class="mt-4">Tables</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="{{url('/dashboard')}}">Dashboard</a></li>
                <li class="breadcrumb-item active">Product</li>
            </ol>
            
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    Product DataTable
                </div>
                <div class="card-body">
                    <table id="datatablesSimple">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Category Name</th>
                                <th>Brand Name</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Category Name</th>
                                <th>Brand Name</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </tfoot>
                        <tbody>
                        
                            @foreach ($products as $values)
                            <tr>
                                <td>{{$values->name}}</td>
                                <td>{{$values->category_name}}</td>
                                <td>{{$values->brand_name}}</td>
                                <td>{{$values->description}}</td>
                                <td><img src="{{asset('uploads/products/'.$values->image)}}" alt="product" width="100px" height="110px"></td>
                                <td>{{$values->price}}</td>
                                <td>
                                    @if ($values->status==1)
                                    <a href="{{url('/dashboard/statusDown/'.$values->id)}}" class="btn btn-success btn-sm">Active</a>
                                    @else
                                    <a href="{{url('/dashboard/statusUp/'.$values->id)}}" class="btn btn-warning btn-sm">InActive</a>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{url('/dashboard/editProduct/'.$values->id)}}" class='btn btn-info btn-sm'>Edit</a>
                                    <button class='btn btn-danger btn-sm' data-bs-toggle="modal" data-bs-target="#basicModal{{$values->id}}">Delete</button>
                                    <!-- Basic Modal -->
                                    <div class="modal fade" id="basicModal{{$values->id}}" tabindex="-1">
                                        <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                            <h5 class="modal-title">Confirmation</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                            Confirm Delete?
                                            </div>
                                            <div class="modal-footer ">
                                            <button type="button" class="btn btn-secondary " data-bs-dismiss="modal">Close</button>
                                            <a href="{{url('/dashboard/deleteProduct/'.$values->id)}}" class="btn btn-primary">Confirm</a>
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