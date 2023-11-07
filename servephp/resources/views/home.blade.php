@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">Listado de usuarios</div>

                    <div class="card-body">
                        {{-- <div class="alert alert-success" role="alert">
                            Listado de usuarios Activos
                        </div> --}}

                        <table class="table table-responsive">
                            <thead>
                                <tr>
                                    <th scope="col-1">ID</th>
                                    <th scope="col">Ficha</th>
                                    <th scope="col">Documento</th>
                                    <th scope="col">IE</th>
                                    <th scope="col">Nombre Aprendiz</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Télefono</th>
                                    <th scope="col">Télefono Acudiente</th>
                                    {{-- <th scope="col">Acciones</th> --}}
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($users as $user)
                                    <tr id="{{$user->uuid}}">
                                        <th scope="row">{{$user->id}}</th>
                                        <td>{{$user->ficha}}</td>
                                        <td>{{$user->typedocument ." ". $user->document}}</td>
                                        <td>{{$user->ie}}</td>
                                        <td>{{$user->allname}}</td>
                                        <td>{{$user->email == null ? 'No hay datos' : $user->email}}</td>
                                        <td>{{$user->phone == null ? 'No hay datos' : $user->phone}}</td>
                                        <td>{{$user->phone_attendant == null ? 'No hay datos' : $user->phone_attendant}}</td>
                                        {{-- <td><img src="./edit.svg" width="30px" title="Editar">
                                            @if (true)
                                                <img src="./active.svg" width="30px" title="Activo, Desea Inactivar">
                                            @else
                                                <img src="./inactive.svg" width="30px" title="Inactivo, Desea Activar">
                                            @endif
                                        </td> --}}
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>

                        <div class="buttons-page">
                            <a href="/home?page={{$previous}}" type="button" class="btn btn-light">Anterior</a> <a href="/home?page={{$next}}" type="button" class="btn btn-light">Siguiente</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
