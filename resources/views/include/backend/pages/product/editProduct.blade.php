@extends('master')

@section('content')

<div class="card">
    <div class="card-body">
        <h5 class="card-title">Edit Product</h5>

        <!-- Multi Columns Form -->
        <form class="row g-3 offset-3" action="{{url('/dashboard/updateProduct/'.$product->id)}}" method="post">
            @csrf
            <div class="col-md-6 border border-black rounded p-3">
                <div class="col-md-12">
                    <label for="inputName5" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="inputName5" name="ProductName" value="{{$product->name}}">
                </div>
                <div class="col-md-12 row mx-0 my-4">
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="inputEmail4" name="CateName" value="{{$product->name}}">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword3" class="form-label">Brand Name</label>
                        <input type="text" class="form-control" id="inputPassword3" name="BrandName" value="{{$product->name}}">
                </div>
                </div>
                
                <div class="col-12 mt-3 my-4">
                    <div class="form-floating">
                      <textarea class="form-control" placeholder="Address" id="floatingTextarea" style="height: 100px;" name="descrip">{{$product->name}}</textarea>
                      <label for="floatingTextarea">Description</label>
                    </div>
                </div>
                <div class="col-md-8">
                    <label for="inputAddress2" class="form-label">Image</label>
                    <input type="file" class="form-control" id="inputAddress2" name="image">
                    <img class="m-3" src="{{asset('uploads/products/'.$product->image)}}" alt="">
                </div>
                <div class="col-md-12 row m-0">
                    <div class="col-md-8">
                        <label for="inputAddress2" class="form-label">Product Price</label>
                        <input type="number" class="form-control" id="inputAddress2" placeholder="Price" name="price" value="{{$product->price}}">
                    </div>
                    
                    <div class="col-md-4">
                        <label for="inputState" class="form-label">Status</label>
                        <select id="inputState" class="form-select" name="status">
                        <option value="">-----Select Status-----</option>
                        <option value="1" {{$product->status==1? 'selected': ''}}>Active</option>
                        <option value="0" {{$product->status==0? 'selected': ''}}>InActive</option>
                        </select>
                    </div>
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