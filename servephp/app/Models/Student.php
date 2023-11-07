<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $table = 'students';
    protected $fillable = ['id','uuid', 'ficha','allname', 'document', 'typedocument', 'asistencia', 'phone', 'email', 'phone_attendant', 'ie', 'active', 'register', 'accept', 'modify_document'];  
}
