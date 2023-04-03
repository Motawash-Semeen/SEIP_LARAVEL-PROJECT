@extends('master')

@section('content')

<div class="card">
    <div class="card-body">
        <h5 class="card-title">Add Product</h5>

        <!-- Multi Columns Form -->
        <form class="row g-3 offset-3" action="{{url('/dashboard/addProduct')}}" enctype="multipart/form-data" method="post">
            @csrf
            <div class="col-md-6 border border-black rounded p-3">
                <div class="col-md-12">
                    <label for="inputName5" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="inputName5" name="ProductName">
                </div>
                <div class="col-md-12 row mx-0 my-4">
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="inputEmail4" name="CateName">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword3" class="form-label">Brand Name</label>
                        <input type="text" class="form-control" id="inputPassword3" name="BrandName">
                </div>
                </div>
                
                <div class="col-12 mt-3 my-4">
                    <div class="form-floating">
                      <textarea class="form-control" placeholder="Address" id="floatingTextarea" style="height: 100px;" name="descrip"></textarea>
                      <label for="floatingTextarea">Description</label>
                    </div>
                </div>
                <div class="col-md-12 my-3">
                    <label for="inputimage" class="form-label">Image</label>
                    <input type="file" class="form-control" id="inputimage" name="image">
                </div>
                <div class="col-md-12 row m-0">
                    <div class="col-md-8">
                        <label for="inputAddress2" class="form-label">Product Price</label>
                        <input type="number" class="form-control" id="inputAddress2" placeholder="Price" name="price">
                    </div>
                    
                    <div class="col-md-4">
                        <label for="inputState" class="form-label">Status</label>
                        <select id="inputState" class="form-select" name="status">
                        <option selected="">-----Select Status-----</option>
                        <option value="1">Active</option>
                        <option value="0">InActive</option>
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