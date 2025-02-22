package controllers;

import models.Car;
import service.CarService;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/cars") 
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class CarController {
    
    private CarService carService = new CarService();

    // Get all cars
    @GET
    @Path("/getAllCars") 
    public Response getAllCars() {
        List<Car> cars = carService.getAllCars();
        return Response.ok(cars).build();
    }

    // Get car by ID
    @GET
    @Path("/{id}")
    public Response getCarById(@PathParam("id") int id) {
        Car car = carService.getCarById(id);
        if (car != null) {
            return Response.ok(car).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).entity("Car not found").build();
        }
    }

    // Add a new car
    @POST
    public Response addCar(Car car) {
        boolean created = carService.addCar(car);
        if (created) {
            return Response.status(Response.Status.CREATED).entity("Car added successfully").build();
        }
        return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Failed to add car").build();
    }

    // Update a car
    @PUT
    @Path("/{id}")
    public Response updateCar(@PathParam("id") int id, Car car) {
        car.setId(id);
        boolean updated = carService.updateCar(car);
        if (updated) {
            return Response.ok("Car updated successfully").build();
        }
        return Response.status(Response.Status.NOT_FOUND).entity("Car not found").build();
    }

    // Delete a car
    @DELETE
    @Path("/{id}")
    public Response deleteCar(@PathParam("id") int id) {
        boolean deleted = carService.deleteCar(id);
        if (deleted) {
            return Response.ok("Car deleted successfully").build();
        }
        return Response.status(Response.Status.NOT_FOUND).entity("Car not found").build();
    }
}
