package dev.stenz.collection;

import dev.stenz.dto.CollectionDto;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

@Path("/api/collection")
public class CollectionResource {
    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public CollectionDto collections(@PathParam("id") int id) {
        return CollectionDto.from(Collection.findById(id));
    }
}
