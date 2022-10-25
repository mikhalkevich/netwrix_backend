<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PartnerResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'company' => $this->company,
            'status' => $this->status,
            'logo' => $this->logo,
            'address' => $this->address,
            'website' => $this->website,
            'phone' => $this->phone,
            'countries' => $this->when($this->countries, $this->countries),
            'states' => $this->when($this->states, $this->states),
        ];
    }
}
