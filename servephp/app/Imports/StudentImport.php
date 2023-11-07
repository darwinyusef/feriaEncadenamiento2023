<?php

namespace App\Imports;

use App\Models\Student;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class StudentImport implements ToModel, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        return new Student([
            //'nficha', 'ie', 'programa', 'aprendiz', 'tipo', 'documento', 'email', 'telefono'
            'uuid' => (string)Str::uuid(),
            'ficha' => $row['ficha'],
            'ie' => $row['ie'],
            'programa' => $row['programa'],
            'allname' => $row['aprendiz'],
            'typedocument' => $row['tipo'],
            'document' => $row['documento'],
            'email' => $row['email'],
            'phone' => $row['telefono'],
            'active' => 1,
            'register' => 'INITIAL'
        ]);
    }
}
